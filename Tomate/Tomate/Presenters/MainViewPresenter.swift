//
//  MainViewPresenter.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 19/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

protocol MainViewPresenter {
    func bodyDidAppear()
}

final class MainViewPresenterImplementation: MainViewPresenter {
    
    @ObservedObject var state: MainViewState
    
    init(state: MainViewState) {
        self.state = state
    }
    
    func bodyDidAppear() {
        state.display(pageTitleText: "Look for places:")
        state.display(restaurantButtonTitle: "Restaurants")
        state.display(cafeButtonTitle: "Cafes")
    }
}
