//
//  CharacterRepository.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

enum CharacterRepositoryResult: Int, CaseIterable {

  case ok, error
}

protocol CharacterRepository {

  func getAllCharacters(page: Int,
                        nameStartsWith: String?,
                        output: @escaping(_ result: CharacterResult, _ characters: [Character]?) -> Void)
}
