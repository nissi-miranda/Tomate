//
//  MainViewState.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 20/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import Foundation

class MainViewState: ObservableObject {
    
    @Published var pageTitleText: String = ""
    @Published var restaurantButtonTitle: String = ""
    @Published var cafeButtonTitle: String = ""
    
    func display(pageTitleText: String) {
        self.pageTitleText = pageTitleText
    }
    
    func display(restaurantButtonTitle: String) {
        self.restaurantButtonTitle = restaurantButtonTitle
    }
    
    func display(cafeButtonTitle: String) {
        self.cafeButtonTitle = cafeButtonTitle
    }
}
