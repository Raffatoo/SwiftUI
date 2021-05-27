//
//  ContentView.swift
//  10-CustomView
//
//  Created by Cruz Torres on 26/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DriverDetail: View {
    
    var driver : Driver
    
    
    var body: some View {
        VStack{
            Image(driver.team.imageName)
                .resizable()
                .frame(height:240)
            Image(driver.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(driver.team.color))
                .overlay(Circle().stroke(Color.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x:0, y:-66)
                .padding(.bottom, -55)
            Text(driver.name)
                .font(.system(size:45))
            Text(String(driver.number))
                .foregroundColor(driver.team.color)
                .font(.system(size: 60))
            
                .fontWeight(.bold)
                .shadow(radius: 3)
            Text(driver.team.escuderia)
                .font(.system(size: 30))
                .shadow(radius: 3)
            Spacer()
            VStack(alignment: .leading){
                StatusRow(statKey: "Edad", statValue: String(driver.age))
                StatusRow(statKey: "Numero", statValue: String(driver.number))
                StatusRow(statKey: "Nacimiento", statValue: driver.birthPlace)
            }
          Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct DriverDetail_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetail(driver: drivers[4])
    }
}
