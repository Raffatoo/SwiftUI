//
//  PlayerRow.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 02/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        ZStack{
            Color("ColorYellosBull")
                .edgesIgnoringSafeArea(.all)
            HStack(){
            HStack{
                
                Image(player.imageName)
                    .resizable()
                    .frame(width: 80, height: 80, alignment: .center)
                    .padding()
                    .padding(.leading, -2)
                VStack {
                    HStack{
                        Text(player.numero)
                            .fontWeight(.bold)
                            .font(.system(size: 36))
                        Text(player.name)
                            .fontWeight(.bold)
                            .font(.system(size: 24))
                        Spacer()
                    }
                    HStack{
                        Text("🏀 :")
                        Text(player.seasons)
                        Spacer()
                        Text("🏆 :")
                        Text(player.rings)
                        Spacer()
                        Text("🏅 :")
                        Text(player.assists)
                        Spacer()
                    }
                    .padding(.top, 10)
                }
                .foregroundColor(Color("ColorRedBull"))
                .font(.system(size: 20, design: .rounded))
                }
            }
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack{
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 450, height: 100))
        }
    }
}
