//
//  CellRow.swift
//  EarthQuakes
//
//  Created by sherry on 26/08/2021.
//

import SwiftUI

struct CellRow: View {
    var data: Features
    var body: some View {
        HStack(alignment:.center , spacing: 9){
            VStack(alignment: .leading){
                VStack {
                    Text(String(data.properties.mag))
                        .bold()
                        .foregroundColor(.white)
                        .font(.headline)
                }.frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .background(Color.green)
                    
            }.clipShape(Circle())
            .overlay(Circle().stroke(Color.gray,lineWidth: 1))
            .shadow(radius: 10 )
            
            VStack{
                Text(data.properties.place)
                    .foregroundColor(.gray)
                    .bold()
            }
                
            }
            
        }
    }


//struct CellRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CellRow(data: Features.init(properties: Properties, geometry: Geometry))
//    }
//}
