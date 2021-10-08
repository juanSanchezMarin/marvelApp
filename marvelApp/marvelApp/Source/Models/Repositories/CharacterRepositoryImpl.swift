//
//  CharacterRepositoryImpl.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit
import Alamofire
import CryptoSwift

/// API manager class for manage service requests.
class CharacterRepositoryImpl: CharacterRepository {

    /// Core function request.
    /// - Parameters:
    ///   - page: num page for request.
    ///   - nameStartsWith: name for filter results.
    ///   - output: request response (array of Result model).
    func getAllCharacters(page: Int,
                          nameStartsWith: String?,
                          output: @escaping(_ result: CharacterResult, _ characters: [Character]?) -> Void) {

        let ts = UUID().uuidString.replacingOccurrences(of: "-", with: "").lowercased()

        var urlParams = [
            "ts" : ts,
            "hash" : (ts + Constants.privateKey + Constants.publicKey).md5(),
            "apikey" : Constants.publicKey,
            "limit" : String(Constants.limit),
            "offset" : String(page * Constants.limit)
        ]
        if let name = nameStartsWith {
            urlParams.updateValue(name, forKey: "nameStartsWith")
        }
        AF.request(Constants.basePath + Constants.charactersPath, method: .get, parameters: urlParams)
            .validate(statusCode: 200..<300)
            .validate(contentType: [Constants.application])
            .responseJSON { (response) in
                print(String(describing: response))
                switch response.result {
                case .success:
                    self.getCharactersFromResponse(dataResponse: response.data) { (characters) in
                        SessionManager.shared.characters = characters
                        output(.success, characters)
                    }
                case let .failure(error):
                    print("CharacterRepositoryImpl:getAllCharacters:error: \(error.localizedDescription)")
                    output(.error, nil)
                }
            }
    }
}

private extension CharacterRepositoryImpl {

    /// Core function parse.
    /// - Parameters:
    ///   - dataResponse: rsponse for server in format Data.
    ///   - output: response decoded with main model.
    func getCharactersFromResponse(dataResponse: Data?, output: @escaping(_ characters: [Character]?) -> Void) {
        guard let dataResponse = dataResponse else { return output(nil) }
        let json = try? JSONSerialization.jsonObject(with: dataResponse, options: [])
        guard let data: [String : Any] = json as? [String : Any],
              let dataDict: [String : Any] = data[Constants.data] as? [String : Any],
              let resultsArray: [[String : Any]] = dataDict[Constants.results] as? [[String : Any]] else {
            return output(nil)
        }
        var characters: [Character] = []
        for character in resultsArray {
            do {
                let jsonData = try JSONSerialization.data(withJSONObject: character,
                                                          options: .prettyPrinted)
                let cha = try JSONDecoder().decode(Character.self, from: jsonData)
                characters.append(cha)
            } catch ( let error ) {
                print(error.localizedDescription)
            }
        }
        output(characters)
    }
}
