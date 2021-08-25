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

  func retrieveCharacters(page: Int,
                          nameStartsWith: String?,
                          output: @escaping(_ result: CharacterResult, _ characters: [Character]?) -> Void)
}
