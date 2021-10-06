//
//  Configurator.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

protocol Configurator {

    /// Retrieve a fresh view controller for the scene to configure.
    /// - Returns: a valid view controller for the current scene.
    func rawViewController() -> UIViewController?

    /// Retrieve a configured view controller for the scene.
    /// - Returns: a valid view controller for the current scene ready to use.
    func preparedViewController() -> UIViewController?

    /// Prepare scene (handle input params and resolve dependencies) to use it.
    func prepareScene(viewController: UIViewController)

    /// Setup input params and delegate for the new scene.
    ///
    /// - Parameters:
    ///   - inputParams: optional input params for the new scene.
    ///   - delegate: optional delegate for the new scene.
    ///   - viewController: scene view controller.
    func setup(inputParams: Any?, delegate: Any?, forViewController viewController: UIViewController)

    /// Retrieve the storyboard name related with the scene UI.
    /// - Returns: a valid storyboard name.
    func storyboardName() -> String

    /// Retrieve the storyboard identifier related with the scene UI.
    /// - Returns: a valid storyboard identifier.
    func storyboardId() -> String

    /// Check if the view controller is valid for the current scene.
    ///
    /// - Parameter viewController: view controller to check.
    /// - Returns: true if the view controller is valid.
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
