//
//  LaunchViewController.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class LaunchViewController: UIViewController {

  @IBOutlet weak var activityIndicator: UIActivityIndicatorView!

  var presenter: LaunchPresenter?

  override func viewDidLoad() {
    super.viewDidLoad()
    self.presenter?.viewDidUpdate(status: .didLoad)
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    self.presenter?.viewDidUpdate(status: .didAppear)
  }

  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    self.presenter?.viewDidUpdate(status: .didDisappear)
  }

  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    self.presenter?.viewDidUpdate(status: .willAppear)
  }

  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    self.presenter?.viewDidUpdate(status: .willDisappear)
  }
}

extension LaunchViewController: LaunchView {

  func setupUI() {
    self.activityIndicator.startAnimating()
  }

  func localizeView() {
  }
}

private extension LaunchViewController {
}
