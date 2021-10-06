//
//  LaunchWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

/// Wireframe protocol to define routing.
protocol LaunchWireframe: AnyObject {

    func presentPostLaunchScene()
}

// MARK: - UIViewController extension to implement wireframe protocol.

extension LaunchViewController: LaunchWireframe {

    func presentPostLaunchScene() {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let sceneDelegate = windowScene.delegate as? SceneDelegate
        else { return }
        guard let windows = sceneDelegate.window else { return }
        AppWireframe.presentPostLaunchScene(window: windows)
    }

    /// Configure next scene.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
