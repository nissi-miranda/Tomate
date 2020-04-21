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
        ZStack(alignment: .topLeading) {
            
            Color.init(red: 1, green: 222/255, blue: 3/255).edgesIgnoringSafeArea(.all)
            
            Text("JustOrder!").frame(alignment: .leading).padding(EdgeInsets(top: 20, leading: 30, bottom: 0, trailing: 0)).font(.system(size: 45, weight: .bold, design: .default))
            
            VStack {
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
            }.frame(width: state.vstackWidth, height: state.vstackHeight, alignment: .top)
        }.onAppear(perform: {
            self.presenter.setupPageTitle()
            self.presenter.setupRestaurantButton()
            self.presenter.setupCafeButton()
            self.presenter.setupVStackWidth()
            self.presenter.setupVStackHeight()
        })
    }
}
