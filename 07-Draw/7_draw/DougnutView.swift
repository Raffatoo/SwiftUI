//
//  DougnutView.swift
//  7_draw
//
//  Created by Cruz Torres on 24/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DougnutView: View {
    var body: some View {
        ZStack{
            Circle()
                .trim(from: 0.0, to: 0.3)
                .stroke(Color(.brown), lineWidth: 60)
            
            Circle()
            .trim(from: 0.30, to: 0.5)
            .stroke(Color(.systemRed), lineWidth: 60)
            
            Circle()
                .trim(from: 0.50, to: 0.75)
                .stroke(Color(.systemBlue), lineWidth: 70)
                .overlay(
                    Text("25%")
                    .font(.system(.title, design:.rounded))
                    .bold()
                    .foregroundColor(.white)
                    .offset(x: -90, y:-80)
            )
            
            Circle()
                .trim(from: 0.75, to: 1.0)
                .stroke(Color(.systemYellow), lineWidth: 60)
            
        }
    .frame(width: 250, height: 250)
    }
}

struct DougnutView_Previews: PreviewProvider {
    static var previews: some View {
        DougnutView()
    }
}
