//
//  PieView.swift
//  7_draw
//
//  Created by Cruz Torres on 24/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct PieView: View {
    var body: some View {
        ZStack{
            payView(payColor: Color.yellow, anguloMax: 360)
            payView(payColor: Color.blue, anguloMax: 320)
            payView(payColor: Color.black, anguloMax: 280)
            payView(payColor: Color.purple, anguloMax: 210)
            payView(payColor: Color.pink, anguloMax: 150)
            payView(payColor: Color.green, anguloMax: 40)
        }
    }
}

struct PieView_Previews: PreviewProvider {
    static var previews: some View {
        PieView()
    }
}

struct payView: View {
    var payColor: Color
    var anguloMax: Int
    
    var body: some View {
        
        Path(){ path in
                path.move(to: CGPoint(x: 200, y: 250))
            path.addArc(center: CGPoint(x:200,y:250), radius: 150, startAngle: Angle(degrees: 0), endAngle: Angle(degrees: Double(anguloMax)), clockwise: false)
                }.fill(payColor)
    }
}
