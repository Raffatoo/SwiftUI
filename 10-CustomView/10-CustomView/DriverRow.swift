//
//  DriverRow.swift
//  10-CustomView
//
//  Created by Cruz Torres on 26/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DriverRow: View {
    
    var driver: Driver
    
    
    var body: some View {
        HStack(){
            Image(driver.imageName)
            .resizable().scaledToFit()
            .frame( width:90, height:90)
            .clipShape(Circle())
            .background(Circle().foregroundColor(driver.team.color))
//            .overlay(Circle().stroke(Color.white, lineWidth: 3))
//            .shadow(radius: 8)
        VStack {
            Text(driver.name)
                .font(.system(size:30))
            Text(driver.birthPlace)
                .font(.system(size:20))
            
            }.padding()
        }
    }
}

struct DriverRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            DriverRow(driver: drivers[0]).previewLayout(.fixed(width: 450, height: 100))
        }
    }
}
