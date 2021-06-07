//
//  DetailView.swift
//  13-Forms
//
//  Created by Cruz Torres on 05/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var course: Course
    
    var body: some View {
        ScrollView{
            VStack{
                Image(course.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    //.frame(height:300)
                    //.clipped()
                
                Text(course.name)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .multilineTextAlignment(.center)
                    .frame(width:300)
                    .lineLimit(3)
                
                Spacer()
            }
        }
        //.navigationBarTitle("", displayMode: .inline)
        .edgesIgnoringSafeArea(.top)
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading:
        Button(action: {
            //Navegar a la pantalla previa
            self.presentationMode.wrappedValue.dismiss()
        }, label: {
            Image(systemName: "arrow.left.circle.fill")
                .font(.title)
                .foregroundColor(.white)
        })
        )
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(course: Course(name: "Curso completo de iOS 13 con Swift UI", image: "swift", type:"Desarrollo de Apps", priceLevel: 1))
    }
}

