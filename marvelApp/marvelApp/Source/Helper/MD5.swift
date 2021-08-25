//
//  MD5.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import Foundation
import var CommonCrypto.CC_MD5_DIGEST_LENGTH
import func CommonCrypto.CC_MD5
import typealias CommonCrypto.CC_LONG

class MD5: NSObject {

  class func MD5(string: String) -> Data {
    let length = Int(CC_MD5_DIGEST_LENGTH)
    let messageData = string.data(using:.utf8)!
    var digestData = Data(count: length)
    _ = digestData.withUnsafeMutableBytes { digestBytes -> UInt8 in
      messageData.withUnsafeBytes { messageBytes -> UInt8 in
        if let messageBytesBaseAddress = messageBytes.baseAddress, let digestBytesBlindMemory = digestBytes.bindMemory(to: UInt8.self).baseAddress {
          let messageLength = CC_LONG(messageData.count)
          CC_MD5(messageBytesBaseAddress, messageLength, digestBytesBlindMemory)
        }
        return 0
      }
    }
    return digestData
  }

  class func MD5Hex(data: Data) -> String {
    let md5Hex = data.map { String(format: "%02hhx", $0) }.joined()
    return md5Hex
  }
}
