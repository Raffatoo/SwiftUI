//
//  ContentView.swift
//  06_states_bindings
//
//  Created by Cruz Torres on 16/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    
    @State private var isPlaying = false
    
    
    var body: some View {
        VStack{
            Text("Favoritos")
                .font(.title)
                .foregroundColor(.secondary)
            
            Image("Havana")
                .resizable()
                .frame(minWidth: 290, maxWidth: 290, minHeight: 290, maxHeight: 290, alignment: .center)
            
            Button(action: {
                self.isPlaying.toggle() //revisa el estado del boton booleano
            }){
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 100))
                    .foregroundColor(isPlaying ? Color("playHavanaColor") : .black)
                    .padding()
            }
            
        }
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
