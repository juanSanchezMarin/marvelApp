//
//  Constants.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

struct Constants {

  static let basePath = "https://gateway.marvel.com"
  static let charactersPath = "/v1/public/characters?"
  static let privateKey = ProcessInfo.processInfo.environment["PRIVATE_KEY"] ?? ""
  static let publicKey = ProcessInfo.processInfo.environment["PUBLIC_KEY"] ?? ""
  static let limit = 50
  static let application = "application/json"
  static let data = "data"
  static let results = "results"
}
