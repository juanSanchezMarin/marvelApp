//
//  CharacterInteractorImpl.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class CharacterInteractorImpl: CharacterInteractor {

  private let repository: CharacterRepository

  init(repository: CharacterRepository) {
    self.repository = repository
  }

  func retrieveCharacters(page: Int,
                          nameStartsWith: String?,
                          output: @escaping(_ result: CharacterResult, _ characters: [Character]?) -> Void) {
    self.repository.getAllCharacters(page: page, nameStartsWith: nameStartsWith) { (result, characters) in
        
      switch result {
          case .success:
            output(.success, characters)
          case .error:
            output(.error, nil)
          }
    }
  }
}
