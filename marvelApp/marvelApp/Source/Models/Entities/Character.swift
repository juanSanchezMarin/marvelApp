//
//  Character.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

/// API object struct
struct Character: Codable, Equatable {
    var id: Int?
    var name: String?
    var description: String?
    var resourceURI: String?
    var thumbnail: Image?

    static func == (lhs: Character, rhs: Character) -> Bool {
        lhs.id == rhs.id &&
        lhs.name == rhs.name &&
        lhs.description == rhs.description &&
        lhs.resourceURI == rhs.resourceURI &&
        lhs.thumbnail == rhs.thumbnail
    }
}

struct Image: Codable, Equatable {

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
