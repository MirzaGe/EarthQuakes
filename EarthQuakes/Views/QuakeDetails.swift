//
//  QuakeDetails.swift
//  EarthQuakes
//
//  Created by sherry on 26/08/2021.
//

import SwiftUI
import Foundation
import UIKit
import MapKit

struct QuakeDetails: View {
    var data: Features

    var body: some View {
        ZStack(alignment: .top){
            MapView(data: data)
            Text(data.properties.place)
        }
    }
}

struct MapView: UIViewRepresentable {
    var data: Features
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let annotation = MKPointAnnotation()
        let coordinate = CLLocationCoordinate2D(latitude: data.geometry.coordinates[1], longitude: data.geometry.coordinates[0])
    
    
    let span = MKCoordinateSpan(latitudeDelta: 1.0, longitudeDelta: 1.0)
    
    let region = MKCoordinateRegion(center: coordinate, span: span)
        
        uiView.setRegion(region, animated: true)
        
        annotation.coordinate = coordinate
        annotation.title = data.properties.place
        annotation.subtitle = "Magnitude:\(data.properties.mag)"
        
        uiView.addAnnotation(annotation)
}
}

//struct QuakeDetails_Previews: PreviewProvider {
//    static var previews: some View {
//        QuakeDetails()
//    }
//}
