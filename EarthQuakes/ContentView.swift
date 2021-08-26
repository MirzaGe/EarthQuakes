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
        NavigationView {
            
        List(networkingManager.dataList.features, id: \.properties) {
            data in
    
            // Text(data.properties.place)
            NavigationLink(destination: Text("Hello:")) {
                CellRow(data: data)
            }.navigationBarTitle("Quakes")
        }
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
