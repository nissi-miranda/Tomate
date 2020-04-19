//
//  MainViewPresenter.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 19/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

final class MainViewPresenter: ObservableObject {
    
    @Published var pageTitleText: String = ""
    @Published var restaurantButtonTitle: String = ""
    @Published var cafeButtonTitle: String = ""
    
    func bodyDidAppear() {
        pageTitleText = "Look for places:"
        restaurantButtonTitle = "Restaurants"
        cafeButtonTitle = "Cafes"
    }
}
