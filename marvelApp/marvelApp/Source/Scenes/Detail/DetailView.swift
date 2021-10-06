//
//  DetailView.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

/// Presenter implementation to handle abstract scene view logic.
protocol DetailView: ViewProtocol {
    
    func show(character: Character)
}
