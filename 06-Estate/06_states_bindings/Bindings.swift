//
//  Bindings.swift
//  06_states_bindings
//
//  Created by Cruz Torres on 16/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct Bindings: View {
    
    @State private var VotoPositivo = 0
    @State private var VotoNeutros = 0
    @State private var VotoNegativo = 0
    
    private var totalVotos = 0
    
    var body: some View {
        VStack{
            Text("\(VotoPositivo + VotoNeutros + VotoNegativo)")
                .font(.system(size: 80)).bold()
            posView(votoPositivos: $VotoPositivo, buttonColor: .green)
            posView(votoPositivos: $VotoNeutros, buttonColor: .orange)
            posView(votoPositivos: $VotoNegativo, buttonColor: .red)
        }
    }
}
struct Bindings_Previews: PreviewProvider {
    static var previews: some View {
        Bindings()
    }
}

struct posView: View {
    @Binding var votoPositivos: Int
    var buttonColor: Color
    
    var body: some View {
        Button(action: {
               self.votoPositivos += 1
        }){
            Circle()
                .frame(width: 150, height: 150)
                .foregroundColor(buttonColor)
                .overlay(Text("\(votoPositivos)"))
                .font(.system(size: 80, weight:.bold, design:.rounded))
                .foregroundColor(.white)
        }
    }
}
