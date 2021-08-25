//
//  HomeConfigurator.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class HomeConfigurator: Configurator {

  static let shared = HomeConfigurator()

  fileprivate struct Constants {
    static let storyboardName: String = "Main"
    static let storyboardId: String = "HomeViewController"
  }

  func isValid(viewController: UIViewController) -> Bool {
    return viewController is HomeViewController
  }

  func storyboardName() -> String {
    return Constants.storyboardName
  }

  func storyboardId() -> String {
    return Constants.storyboardId
  }

  func prepareScene(viewController: UIViewController) {
    let presenter = HomePresenter(view: viewController as! HomeView,
                                  wireframe: viewController as! HomeWireframe,
                                  interactor: CharacterInteractorImpl(repository: CharacterRepositoryImpl()))
    guard let viewController = viewController as? HomeViewController else {
      assertionFailure("Invalid UIViewController to prepare scene")
      return
    }
    viewController.presenter = presenter
  }
}
