//
//  DetailView.swift
//  09-Navigation
//
//  Created by Cruz Torres on 26/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var course: Course
    
    var body: some View {
        VStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height:300)
                .clipped()
            
            Text(course.name)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .frame(width: 300)
                .lineLimit(2)
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: Course(name:"Node: De cero a esperto", image:"node"))
    }
}
