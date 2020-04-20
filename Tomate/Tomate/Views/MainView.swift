//
//  MainView.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 05/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @ObservedObject var state: MainViewState
    let presenter: MainViewPresenter!
    
    init(state: MainViewState) {
        self.state = state
        presenter = MainViewPresenterImplementation(state: state)
    }
    
    var body: some View {
        VStack(spacing: 10) {
            Text(state.pageTitleText)
            Button(action: {
                // What to perform
            }) {
                Text(state.restaurantButtonTitle)
            }
            Button(action: {
                // What to perform
            }) {
                Text(state.cafeButtonTitle)
            }
        }.onAppear(perform: {
            self.presenter.bodyDidAppear()
        })
    }
}
