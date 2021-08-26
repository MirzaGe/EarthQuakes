//
//  ContentView.swift
//  EarthQuakes
//
//  Created by sherry on 26/08/2021.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkingManager = NetworkingManager()
    
    var body: some View {
        List(networkingManager.dataList.features, id: \.properties) {
            data in
            CellRow(data: data)
            // Text(data.properties.place)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
