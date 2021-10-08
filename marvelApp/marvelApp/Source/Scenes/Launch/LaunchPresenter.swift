//
//  LaunchPresenter.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import Foundation

/// Presenter implementation to handle abstract scene view logic.
class LaunchPresenter: Presenter {
    
    fileprivate struct Constants {
        static let launchDuration = TimeInterval(1.0)
        static let page = Int(0)
    }
    
    fileprivate weak var view: LaunchView!
    fileprivate weak var wireframe: LaunchWireframe!
    fileprivate var interactor: CharacterInteractor!
    
    init(view: LaunchView, wireframe: LaunchWireframe, interactor: CharacterInteractor) {
        self.view = view
        self.wireframe = wireframe
        self.interactor = interactor
    }
    
    func viewDidUpdate(status: ViewStatus) {
        switch status {
        case .didLoad:
            self.view.setupUI()
            self.view.localizeView()
            self.getCharacters()
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

// MARK: - Presenter public methods to handle view events.
extension LaunchPresenter {
    
    func getCharacters() {
        self.interactor.retrieveCharacters(page: Constants.page, nameStartsWith: nil) { (result, characters) in
            self.finishLaunchScene()
        }
    }
    
    func finishLaunchScene() {
        DispatchQueue.main.asyncAfter(deadline: .now() + Constants.launchDuration) {
            if let wireframe = self.wireframe {
                wireframe.presentPostLaunchScene()
            }
        }
    }
}
