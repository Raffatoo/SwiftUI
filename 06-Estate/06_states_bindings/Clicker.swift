//
//  Clicker.swift
//  06_states_bindings
//
//  Created by Cruz Torres on 16/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct Clicker: View {
    
    @State private var isSum = 0
    @State private var isRest = 0
    
    var body: some View {
        
        HStack{
            Button(action: {
                self.isSum += 1
            }){
                Text("\(isSum)")
                    .font(.system(size: 80))
                    .bold()
            }.buttonStyle(main1buttonStyle())
            
            Button(action: {
                self.isRest -= 1
            }){
                Text("\(isRest)")
                    .font(.system(size: 80))
                    .bold()
                 .background(Color(.black))
            }
            .buttonStyle(main2buttonStyle())
        }
    }
}

struct Clicker_Previews: PreviewProvider {
    static var previews: some View {
        Clicker()
    }
}

struct main2buttonStyle: ButtonStyle {
    func makeBody(configuration:Self.Configuration) -> some View{
        configuration.label
       .frame(minWidth: 140, idealWidth: 140, maxWidth: 140, minHeight: 140, idealHeight: 140, maxHeight: 140)
        .background(Color(.black))
       .foregroundColor(Color(.white))
       .cornerRadius(70)
    }
}

struct main1buttonStyle: ButtonStyle {
    func makeBody(configuration:Self.Configuration) -> some View{
        configuration.label
       .frame(minWidth: 140, idealWidth: 140, maxWidth: 140, minHeight: 140, idealHeight: 140, maxHeight: 140)
        .background(Color(.red))
       .foregroundColor(Color(.white))
       .cornerRadius(70)
    }
}
