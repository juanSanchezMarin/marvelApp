//
//  DetailConfigurator.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class DetailConfigurator: Configurator {

  static let shared = DetailConfigurator()

  fileprivate struct Constants {
    static let storyboardName: String = "Main"
    static let storyboardId: String = "DetailViewController"
  }

  func isValid(viewController: UIViewController) -> Bool {
    return viewController is DetailViewController
  }

  func storyboardName() -> String {
    return Constants.storyboardName
  }

  func storyboardId() -> String {
    return Constants.storyboardId
  }

  func prepareScene(viewController: UIViewController) {
    let presenter = DetailPresenter(view: viewController as! DetailView,
                                    wireframe: viewController as! DetailWireframe)
    guard let viewController = viewController as? DetailViewController else {
      assertionFailure("Invalid UIViewController to prepare scene")
      return
    }
    viewController.presenter = presenter
  }
}
