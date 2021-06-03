//
//  DetailPlayer.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 03/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DetailPlayer: View {
    
    var player : Player
    
    var body: some View {
        
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("ColorRedBull"), Color("ColorBlackBull")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                        
                        Text(player.name)
                            .foregroundColor(Color("ColorYellosBull"))
                            .fontWeight(.bold)
                            .font(.system(size: 28))
                        Spacer()
                    
                    }.padding()
                Image(player.imageCard)
                        .resizable()
                        .frame(width: 300, height: 400, alignment: .center)
                        .rotationEffect(.init(degrees: 6))
                ScrollView{
                    Text(player.biography)
                        .foregroundColor(Color("ColorYellosBull"))
                         //.fontWeight(.bold)
                        .font(.system(size: 22, design: .rounded ))
                        .padding()
                    }
                Spacer()
            }
        }
    }
}

struct DetailPlayer_Previews: PreviewProvider {
    static var previews: some View {
        DetailPlayer(player: players[0])
    }
}
