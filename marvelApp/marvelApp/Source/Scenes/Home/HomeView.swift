//
//  HomeView.swift
//  marvelApp
//
//  Created by Juan Sánchez Marín on 24/8/21.
//

protocol HomeView: ViewProtocol {

  func show(characters: [Character])
  func showCharactersFromSearch(characters: [Character])
  func addNewCharacters(characters: [Character])
  func empty()
}
