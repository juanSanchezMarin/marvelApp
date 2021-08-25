//
//  Configurator.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

protocol Configurator {

  func rawViewController() -> UIViewController?
  func preparedViewController() -> UIViewController?
  func prepareScene(viewController: UIViewController)
  func setup(inputParams: Any?, delegate: Any?, forViewController viewController: UIViewController)
  func storyboardName() -> String
  func storyboardId() -> String
  func isValid(viewController: UIViewController) -> Bool
}

extension Configurator {

  func rawViewController() -> UIViewController? {
    let storyboard = UIStoryboard(name: storyboardName(), bundle: nil)
    let viewController = storyboard.instantiateViewController(withIdentifier: storyboardId())
    if !isValid(viewController: viewController) {
      assertionFailure("Invalid UIViewController to prepare scene")
      return nil
    }
    return viewController
  }

  func preparedViewController() -> UIViewController? {
    guard let viewController = rawViewController() else { return nil }
    prepareScene(viewController: viewController)
    return viewController
  }

  func setup(inputParams: Any?, delegate: Any?, forViewController viewController: UIViewController) {}
}
