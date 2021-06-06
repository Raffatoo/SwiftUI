//
//  CustomMain.swift
//  12-ModalView
//
//  Created by Cruz Torres on 04/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct CustomMain: View {
    var body: some View {
        ZStack (alignment: .center) {
            LinearGradient(gradient: Gradient(colors: [.white, .red, .black]), startPoint: .top, endPoint: .bottom)
            VStack {
                
                Text("Window Modal")
                    .foregroundColor(.red)
                    .font(.custom("Open Sans", size: 28))
                    .fontWeight(.bold)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(40)
                    .shadow(color: .black, radius: 5, x: 0, y: 6)
                
                Image("logo_user")
                    .resizable()
                    .frame(width: 180, height: 180, alignment: .center)
                    //.shadow(color: .black, radius: 5, x: 0, y: 6)
                    .padding(.all, 40)
                
                Text("Next Window")
                .foregroundColor(.red)
                .font(.custom("Open Sans", size: 28))
                .fontWeight(.bold)
                .padding()
                .background(Color.white)
                .cornerRadius(40)
                .shadow(color: .black, radius: 5, x: 0, y: 6)
                
            }
            
        }
    }
}

struct CustomMain_Previews: PreviewProvider {
    static var previews: some View {
        CustomMain()
    }
}
