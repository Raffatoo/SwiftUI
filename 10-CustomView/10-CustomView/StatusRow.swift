//
//  StatusRow.swift
//  10-CustomView
//
//  Created by Cruz Torres on 26/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct StatusRow: View {
    
    var statKey: String
    var statValue: String
    
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            
         Text(statKey + ":")
            .font(.system(size: 25))
            .fontWeight(.bold)
            .padding(.leading, 10)
        
         Text(statValue)
            .font(.system(size:30))
            .fontWeight(.ultraLight)
            .padding(.trailing, 20)
            
        }
    }
}

struct StatusRow_Previews: PreviewProvider {
    static var previews: some View {
        StatusRow(statKey: "Edad", statValue: "31")
    }
}
