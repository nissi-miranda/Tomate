//
//  MainViewImplementation.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 05/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var presenter = MainViewPresenter()
    
    var body: some View {
        VStack(spacing: 10) {
            Text(presenter.pageTitleText)
            Button(action: {
                // What to perform
            }) {
                Text(presenter.restaurantButtonTitle)
            }
            Button(action: {
                // What to perform
            }) {
                Text(presenter.cafeButtonTitle)
            }
        }.onAppear(perform: {
            self.presenter.bodyDidAppear()
        })
    }
}
