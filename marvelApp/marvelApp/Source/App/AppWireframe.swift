//
//  AppWireframe.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

import UIKit

class AppWireframe {

    fileprivate struct Constants {
        static let appTransitionAnimationDuration = TimeInterval(0.3)
        static let appTransitionScaleAnimation = CGFloat(1.5)
    }

    class func presentInitialScene(window: UIWindow) {
        window.rootViewController = LaunchConfigurator.shared.preparedViewController()
    }

    class func presentPostLaunchScene(window: UIWindow) {
        self.presentHomeScene(window: window)
    }
}

private extension AppWireframe {

    class func presentHomeScene(window: UIWindow) {
        guard let homeViewController = HomeConfigurator.shared.preparedViewController() else { return }
        let navigationController = UINavigationController(rootViewController: homeViewController)
        presentNewRoot(viewController: navigationController, window: window, scaling: true)
    }

    class func presentNewRoot(viewController: UIViewController, window: UIWindow, scaling: Bool) {
        if let snapshot = window.snapshotView(afterScreenUpdates: true) {
            viewController.view.addSubview(snapshot)
            window.rootViewController = viewController
            UIView.animate(withDuration: AppWireframe.Constants.appTransitionAnimationDuration,
                           animations: {
                            snapshot.layer.opacity = Float(0.0)
                            if scaling {
                                snapshot.layer.transform = CATransform3DMakeScale(AppWireframe.Constants.appTransitionScaleAnimation,
                                                                                  AppWireframe.Constants.appTransitionScaleAnimation,
                                                                                  AppWireframe.Constants.appTransitionScaleAnimation)
                            }
                           }, completion: { (finished) in
                            snapshot.removeFromSuperview()
                           })
        }
    }
}
