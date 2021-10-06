//
//  HomeWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

/// Wireframe protocol to define routing.
protocol HomeWireframe: AnyObject {
    
    func navigateToDetailScene(character: Character)
}

// MARK: - UIViewController extension to implement wireframe protocol.

extension HomeViewController: HomeWireframe {
    
    func navigateToDetailScene(character: Character) {
        guard let detailViewController = DetailConfigurator.shared.preparedViewController() as? DetailViewController else { return }
        detailViewController.presenter?.character = character
        self.present(detailViewController, animated: true, completion: nil)
    }
    
    /// Configure next scene.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
