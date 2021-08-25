//
//  DetailPresenter.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import Foundation

class DetailPresenter: Presenter {

  fileprivate struct Constants {
    static let duration = TimeInterval(1.5)
  }

  var character: Character?

  fileprivate weak var view: DetailView!
  fileprivate weak var wireframe: DetailWireframe!

  init(view: DetailView, wireframe: DetailWireframe) {
    self.view = view
    self.wireframe = wireframe
  }

  func viewDidUpdate(status: ViewStatus) {
    switch status {
    case .didLoad:
      self.view.setupUI()
      self.view.localizeView()
      self.getCharacter()
    case .didAppear:
      break
    case .didDisappear:
      break
    case .willAppear:
      break
    case .willDisappear:
      break
    }
  }
}

extension DetailPresenter {
}

private extension DetailPresenter {

  func getCharacter() {
    guard let character = self.character else { return }
    self.view.show(character: character)
  }
}
