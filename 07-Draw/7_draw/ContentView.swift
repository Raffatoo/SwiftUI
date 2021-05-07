//
//  ContentView.swift
//  7_draw
//
//  Created by Cruz Torres on 22/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Path(){ path in
            path.move(to: CGPoint(x:30,y:30))
            path.addLine(to: CGPoint(x:230,y:30))
            path.addLine(to: CGPoint(x:230,y:150))
            path.addLine(to: CGPoint(x:30,y:150))
            path.closeSubpath()
        }.stroke(Color.blue, lineWidth: 10)
        //.fill(Color.blue) //pintar de manera solida
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
