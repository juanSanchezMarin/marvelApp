//
//  LaunchWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

protocol LaunchWireframe: AnyObject {

  func presentPostLaunchScene()
}

extension LaunchViewController: LaunchWireframe {

  func presentPostLaunchScene() {

    guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
        let sceneDelegate = windowScene.delegate as? SceneDelegate
      else {
        return
      }
    guard let windows = sceneDelegate.window else { return }
    AppWireframe.presentPostLaunchScene(window: windows)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
