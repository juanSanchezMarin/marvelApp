//
//  DetailWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

/// Wireframe protocol to define routing.
protocol DetailWireframe: AnyObject {
}

// MARK: - UIViewController extension to implement wireframe protocol.

extension DetailViewController: DetailWireframe {
    
    /// Configure next scene.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
