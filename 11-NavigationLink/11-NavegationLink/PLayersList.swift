//
//  PLayersList.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 03/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct PLayersList: View {
    
    var body: some View {
        
        
        NavigationView {
            List(players) {
                player in
                NavigationLink(destination: DetailPlayer(player: player)){
                    PlayerRow(player: player)
                }
            }
            //.navigationBarTitle(Text("Dream Team"), displayMode: .large)
        }
        
        
    }
    
}

struct PLayersList_Previews: PreviewProvider {
    static var previews: some View {
        PLayersList()
    }
}
