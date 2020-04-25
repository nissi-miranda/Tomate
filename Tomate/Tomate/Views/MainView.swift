//
//  MainView.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 05/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

struct MainView: View {
    
    @State var vstackWidth: CGFloat = 0
    @State var buttonsWidth: CGFloat = 0
    @State var buttonsHeight: CGFloat = 0
    @State var buttonsImageHeight: CGFloat = 0
    
    @ObservedObject var state: MainViewState
    let presenter: MainViewPresenter!
    
    init(state: MainViewState) {
        self.state = state
        presenter = MainViewPresenterImplementation(state: state)
        
        UINavigationBar.appearance().tintColor = UIColor.black
        
        UINavigationBar.appearance().largeTitleTextAttributes = [
        .foregroundColor: UIColor.black,
        .font: UIFont.systemFont(ofSize: 45, weight: .bold)]
    }
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: PlacesListView(), isActive: $state.canNavigate) {
                
                ZStack(alignment: .topLeading) {
                    
                    Color.init(red: 1, green: 222/255, blue: 3/255).edgesIgnoringSafeArea(.all)
                    
                    VStack(spacing: 40) {
                        Text(state.pageTitleText)
                            .font(.system(size: 22, weight: .regular, design: .default))
                            .foregroundColor(Color.black)
                        
                        Button(action: {
                            self.searchPlace()
                        }) {
                            VStack {
                                Image("restaurant")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: nil, height: buttonsImageHeight, alignment: .top)
                                Text(state.restaurantButtonTitle).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    .foregroundColor(Color.black)
                            }
                        }.frame(width: buttonsWidth, height: buttonsHeight, alignment: .center)
                            .background(Color.white)
                            .clipped()
                            .cornerRadius(5)
                            .shadow(radius: 5)
                        
                        Button(action: {
                            self.searchPlace()
                        }) {
                            VStack {
                                Image("cafe")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: nil, height: buttonsImageHeight, alignment: .top)
                                Text(state.cafeButtonTitle).padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 0))
                                    .foregroundColor(Color.black)
                            }
                        }.frame(width: buttonsWidth, height: buttonsHeight, alignment: .center)
                            .background(Color.white)
                            .clipped()
                            .cornerRadius(5)
                            .shadow(radius: 5)
                        
                    }.frame(width: vstackWidth, height: nil, alignment: .top).padding(EdgeInsets(top: 100, leading: 0, bottom: 0, trailing: 0))
                    
                }.onAppear(perform: {
                    self.configureView()
                })
            }.navigationBarTitle("JustOrder!")
        }
    }
    
    private func searchPlace() {
        presenter.enableNavigation()
    }
    
    private func configureView() {
        presenter.setupPageTitle()
        presenter.setupRestaurantButton()
        presenter.setupCafeButton()
        
        vstackWidth = UIScreen.main.bounds.width
        buttonsWidth = UIScreen.main.bounds.width * 0.7
        buttonsHeight = (UIScreen.main.bounds.width * 0.7) * 0.5
        buttonsImageHeight = (UIScreen.main.bounds.width * 0.7) * 0.42
    }
}
