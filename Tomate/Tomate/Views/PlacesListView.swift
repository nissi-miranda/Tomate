//
//  PlacesListView.swift
//  Tomate
//
//  Created by Nissi Vieira Miranda on 25/04/2020.
//  Copyright © 2020 Nissi Vieira Miranda. All rights reserved.
//

import SwiftUI

struct PlacesListView: View {
    
    @State var isScreenActive: Bool = false
    
    var body: some View {
        NavigationLink(destination: Text("Next screen"), isActive: $isScreenActive) {
            
            ZStack(alignment: .topLeading) {
                Color.init(red: 1, green: 222/255, blue: 3/255).edgesIgnoringSafeArea(.all)
                Text("List")
            }
        }.navigationBarTitle("Restaurants")
    }
}
