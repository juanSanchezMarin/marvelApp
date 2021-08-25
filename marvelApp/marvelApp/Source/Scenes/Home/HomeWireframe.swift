//
//  HomeWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

protocol HomeWireframe: AnyObject {

  func navigateToDetailScene(character: Character)
}

extension HomeViewController: HomeWireframe {

  func navigateToDetailScene(character: Character) {
    guard let detailViewController = DetailConfigurator.shared.preparedViewController() as? DetailViewController else { return }
    detailViewController.presenter?.character = character
    self.present(detailViewController, animated: true, completion: nil)
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
