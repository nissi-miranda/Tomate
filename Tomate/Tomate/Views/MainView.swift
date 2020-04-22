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
            
            VStack(spacing: 40) {
                Text(state.pageTitleText).font(.system(size: 25, weight: .regular, design: .default))
                
                Button(action: {
                    // What to perform
                    print("Restaurant button tapped")
                }) {
                    VStack {
                        Image("restaurant")
                            .resizable()
                            .scaledToFit()
                            .frame(width: nil, height: state.buttonsImageHeight, alignment: .top)
                        Text(state.restaurantButtonTitle).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                            .foregroundColor(Color.black)
                    }
                }.frame(width: state.buttonsWidth, height: state.buttonsHeight, alignment: .center)
                    .background(Color.white)
                    .clipped()
                    .cornerRadius(5)
                    .shadow(radius: 5)
                
                Button(action: {
                    // What to perform
                    print("Cafe button tapped")
                }) {
                    VStack {
                        Image("cafe")
                            .resizable()
                            .scaledToFit()
                            .frame(width: nil, height: state.buttonsImageHeight, alignment: .top)
                        Text(state.cafeButtonTitle).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                            .foregroundColor(Color.black)
                    }
                }.frame(width: state.buttonsWidth, height: state.buttonsHeight, alignment: .center)
                    .background(Color.white)
                    .clipped()
                    .cornerRadius(5)
                    .shadow(radius: 5)
                
            }.frame(width: state.vstackWidth, height: nil, alignment: .top).padding(EdgeInsets(top: 180, leading: 0, bottom: 0, trailing: 0))
            
        }.onAppear(perform: {
            self.presenter.setupPageTitle()
            self.presenter.setupRestaurantButton()
            self.presenter.setupCafeButton()
            self.presenter.setupVStackWidth()
            self.presenter.setupButtonsWidth()
            self.presenter.setupButtonsHeight()
            self.presenter.setupButtonsImageHeight()
        })
    }
}
