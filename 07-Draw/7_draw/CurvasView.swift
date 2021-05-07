//
//  CurvasView.swift
//  7_draw
//
//  Created by Cruz Torres on 24/06/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.
//

import SwiftUI

struct CurvasView: View {
    var body: some View {
       
        ZStack {
            /*
            Path(){ path in
                path.move(to: CGPoint(x:60, y:130))
                path.addLine(to: CGPoint(x:130, y:60))
                path.addLine(to: CGPoint(x:200, y:130))
            }*/
        
        Path(){ path in
                   path.move(to: CGPoint(x:30,y:130))
                   path.addLine(to: CGPoint(x:60,y:130))
                   path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y:60))
                   path.addLine(to: CGPoint(x:230, y:130))
                   path.addLine(to: CGPoint(x:230, y:250))
                   path.addLine(to: CGPoint(x:30, y:250))
                   path.closeSubpath()
               }
               .fill(Color.blue)
            
        Path(){ path in
                   path.move(to: CGPoint(x:30,y:130))
                   path.addLine(to: CGPoint(x:60,y:130))
                   path.addQuadCurve(to: CGPoint(x: 200, y: 130), control: CGPoint(x: 130, y:60))
                   path.addLine(to: CGPoint(x:230, y:130))
                   path.addLine(to: CGPoint(x:230, y:250))
                   path.addLine(to: CGPoint(x:30, y:250))
                   path.closeSubpath()
               }
               .stroke(Color.pink, lineWidth:10)
        
        }
    }
}

struct CurvasView_Previews: PreviewProvider {
    static var previews: some View {
        CurvasView()
    }
}
