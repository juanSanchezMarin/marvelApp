//
//  ViewProtocol.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import Foundation

protocol ViewProtocol: AnyObject {

    /// Setup the UI view.
    func setupUI()

    /// Localized UI view.
    func localizeView()
}

// MARK: - Extension with empty default implementation.
extension ViewProtocol {

    func setupUI() {}
    func localizeView() {}
}
