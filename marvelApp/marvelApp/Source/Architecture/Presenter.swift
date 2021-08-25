//
//  Presenter.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

protocol Presenter: AnyObject {

  func viewDidUpdate(status: ViewStatus)
}

enum ViewStatus: Int {

  case didLoad, willAppear, didAppear, willDisappear, didDisappear

  init() {

    self = .didLoad
  }
}
