//
//  ViewProtocol.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import Foundation

protocol ViewProtocol: AnyObject {

  func setupUI()
  func localizeView()
}

extension ViewProtocol {

  func setupUI() {}
  func localizeView() {}
}
