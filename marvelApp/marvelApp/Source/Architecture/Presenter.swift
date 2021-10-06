//
//  Presenter.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

protocol Presenter: AnyObject {

    /// Handle UI status updates to take some actions.
    ///
    /// - Parameter status: current UI status (based on iOS view life cycle).
    func viewDidUpdate(status: ViewStatus)
}

/// Enum to know the status for the view (based on view controller life cycle)
///
/// - didLoad: view did load life cycle event
/// - willAppear: view will appear life cycle event
/// - didAppear: did appear life cycle event
/// - willDisappear: will disappear life cycle event
/// - didDisappear: did disappear life cycle event
enum ViewStatus: Int {

    case didLoad, willAppear, didAppear, willDisappear, didDisappear

    init() {

        self = .didLoad
    }
}
