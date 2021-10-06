//
//  CharacterInteractor.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

enum CharacterResult: Int {

    case success, error
}

protocol CharacterInteractor {

    /// function request.
    /// - Parameters:
    ///   - page: num page for request.
    ///   - nameStartsWith: name for filter results.
    ///   - output: request response (array of Result model).
    func retrieveCharacters(page: Int,
                            nameStartsWith: String?,
                            output: @escaping(_ result: CharacterResult, _ characters: [Character]?) -> Void)
}
