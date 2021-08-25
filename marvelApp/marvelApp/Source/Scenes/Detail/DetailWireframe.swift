//
//  DetailWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

protocol DetailWireframe: AnyObject {
}

extension DetailViewController: DetailWireframe {

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {}
}
