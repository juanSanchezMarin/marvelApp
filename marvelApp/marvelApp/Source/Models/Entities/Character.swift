//
//  Character.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

struct Character: Codable {

    var id: Int?
    var name: String?
    var description: String?
    var resourceURI: String?
    var thumbnail: Image?
}

struct Image: Codable {

  var path: String?
  var ext: String?

  var url: String {
    guard let p = path, let e = ext else { return "" }
    return p + "." + e
  }

  enum CodingKeys: String, CodingKey {
    case path
    case ext = "extension"
  }
}
