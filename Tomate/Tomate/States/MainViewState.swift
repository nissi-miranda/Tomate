//
//  MainViewState.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 20/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

class MainViewState: ObservableObject {
    
    @Published var pageTitleText: String = ""
    @Published var restaurantButtonTitle: String = ""
    @Published var cafeButtonTitle: String = ""
    @Published var canNavigate: Bool = false
}
