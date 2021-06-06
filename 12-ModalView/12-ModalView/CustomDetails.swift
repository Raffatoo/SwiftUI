//
//  CustomDetails.swift
//  12-ModalView
//
//  Created by Cruz Torres on 04/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct CustomDetails: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [.white, .green, .black]), startPoint: .top, endPoint: .bottom)
            Text("Pantalla 3 ")
                    .fontWeight(.bold)
                    .font(.system(size: 40))
        }
    }
}

struct CustomDetails_Previews: PreviewProvider {
    static var previews: some View {
        CustomDetails()
    }
}
