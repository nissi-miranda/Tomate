//
//  MainViewPresenter.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 19/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

protocol MainViewPresenter {
    func setupPageTitle()
    func setupRestaurantButton()
    func setupCafeButton()
    func setupVStackWidth()
    func setupButtonsWidth()
    func setupButtonsHeight()
    func setupButtonsImageHeight()
}

final class MainViewPresenterImplementation: MainViewPresenter {
    
    @ObservedObject var state: MainViewState
    
    init(state: MainViewState) {
        self.state = state
    }
    
    func setupPageTitle() {
        state.pageTitleText = "Pick where to order:"
    }
    
    func setupRestaurantButton() {
        state.restaurantButtonTitle = "Restaurants"
    }
    
    func setupCafeButton() {
        state.cafeButtonTitle = "Cafes"
    }
    
    func setupVStackWidth() {
        state.vstackWidth = UIScreen.main.bounds.width
    }
    
    func setupButtonsWidth() {
        state.buttonsWidth = UIScreen.main.bounds.width * 0.7
    }
    
    func setupButtonsHeight() {
        state.buttonsHeight = (UIScreen.main.bounds.width * 0.7) * 0.5
    }
    
    func setupButtonsImageHeight() {
        state.buttonsImageHeight = (UIScreen.main.bounds.width * 0.7) * 0.42
    }
}
