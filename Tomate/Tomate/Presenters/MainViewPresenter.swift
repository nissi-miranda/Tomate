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
    func setupVStackHeight()
}

final class MainViewPresenterImplementation: MainViewPresenter {
    
    @ObservedObject var state: MainViewState
    
    init(state: MainViewState) {
        self.state = state
    }
    
    func setupPageTitle() {
        state.pageTitleText = "Look for places:"
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
    
    func setupVStackHeight() {
        state.vstackHeight = UIScreen.main.bounds.height/2
    }
}
