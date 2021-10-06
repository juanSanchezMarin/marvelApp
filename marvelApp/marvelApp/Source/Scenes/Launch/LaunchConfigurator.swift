//
//  LaunchConfigurator.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

/// Configurator class to provide a complete scene ready to use.
class LaunchConfigurator: Configurator {

    static let shared = LaunchConfigurator()

    /// Class constants.
    fileprivate struct Constants {
        static let storyboardName: String = "Main"
        static let storyboardId: String = "LaunchViewController"
    }

    func isValid(viewController: UIViewController) -> Bool {
        return viewController is LaunchViewController
    }

    func storyboardName() -> String {
        return Constants.storyboardName
    }

    func storyboardId() -> String {
        return Constants.storyboardId
    }

    func prepareScene(viewController: UIViewController) {
        let presenter = LaunchPresenter(view: viewController as! LaunchView,
                                        wireframe: viewController as! LaunchWireframe,
                                        interactor: CharacterInteractorImpl(repository: CharacterRepositoryImpl()))
        guard let viewController = viewController as? LaunchViewController else {
            assertionFailure("Invalid UIViewController to prepare scene")
            return
        }
        viewController.presenter = presenter
    }
}
