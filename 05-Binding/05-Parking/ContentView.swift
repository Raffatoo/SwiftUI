//
//  ContentView.swift
//  07-Parking
//
//  Created by Cruz Torres on 05/03/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numClickss = 0
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("Frost B"), Color("Frost A")]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        
            VStack {
                Text("Parck Free")
                    .foregroundColor(.white)
                    .font(.system(.largeTitle, design: .rounded))
                    .padding()
                Text("\(numClickss)")
                    .foregroundColor(.gray)
                    .font(.system(size: 100, design: .rounded))
                    .frame(minWidth: 0, maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(20)
                
                Image(systemName: "car.fill")
                    .foregroundColor(.yellow)
                    .font(.system(size: 100))
                
                HStack{
                    btnParck(numClicks: $numClickss, nombreIconBtn: "chevron.up.circle.fill", colorIconBtn: .green, suma: "suma")
                    btnParck(numClicks: $numClickss, nombreIconBtn: "chevron.down.circle.fill", colorIconBtn: .red, suma: "resta")
                }.padding(30)
                
                Spacer()
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct btnParck: View {
    
    @Binding var numClicks: Int
    
    var nombreIconBtn: String
    var colorIconBtn : Color
    var suma: String
    
    var body: some View {
        Button(action:{
            if self.suma != "suma" {
                self.numClicks -= 1
            }else {
            self.numClicks += 1
            }
        }){
            Image(systemName: nombreIconBtn)
                .foregroundColor(colorIconBtn)
                .font(.system(size: 100))
                .padding()
        }
    }
}
