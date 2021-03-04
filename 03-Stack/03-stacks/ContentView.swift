//
//  ContentView.swift
//  03-stacks
//
//  Created by Cruz Torres on 03/03/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
                HStack{
                    HeaderView()
                    Spacer()
                }.padding(8)
                
                HStack(spacing: 8) {
                    InfoCurso(title:"Básico", price: "$6.99", subtitle: "User Interface", textColor: .white, backgroundColor: .green, promocion: "Rebaja -25%")
                    ZStack {
                        InfoCurso(title:"Carrera", price: "$9.99", subtitle: "User Experience", textColor: .black, backgroundColor: .yellow)
                    }
                }.padding(.all)
                
                InfoCurso(title: "Definitivo", price: "$ 99.99", subtitle: "Todos los Cursos Online", textColor: .white, backgroundColor: Color(red: 50/255, green: 50/255, blue: 50/255), icon:"folder.fill.badge.plus", promocion: "Mas Vendido")
                    .padding(.all)
            
                InfoCurso(title: "3Pack Cursos ", price: "$ 29.99", subtitle: "Crea tu paquete 3 cursos", textColor: .white, backgroundColor: Color(red: 150/255, green: 50/255, blue: 50/255), icon:"flame", promocion: "Promoción!!!")
                    .padding(.all)
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4)  {
            Text("Cursos de Interes")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)

            Text("Diseño usuario")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

struct InfoCurso: View {
    var title: String
    var price: String
    var subtitle: String
    var textColor: Color
    var backgroundColor: Color
    //variable opcional
    var icon: String?
    var promocion: String?
    
    var body: some View {
        
        ZStack {
            VStack {
                
                icon.map({
                    //$0 hace referencia al valor de la primera variable del closure aqui es si hay icono o no
                    Image(systemName: $0) //$0 = icon
                        .font(.largeTitle)
                        .foregroundColor(.white)
                })
                
                Text(title)
                    .font(.system(.title, design:.rounded))
                    .fontWeight(.bold)
                
                Text(price)
                    .font(.system(size: 34, weight:.heavy, design:.rounded))
                
                Text(subtitle)
                    .font(.headline)
            }
            .frame(minWidth:0, maxWidth:.infinity, minHeight: 100)
            .padding(30)
            .foregroundColor(textColor)
            .background(backgroundColor)
            .cornerRadius(10)
        
            promocion.map({
                Text($0)
                    .font(.system(size: 14, weight:.heavy, design:.rounded))
                    .foregroundColor(Color.white)
                    .padding(4)
                    .frame(width: 180)
                    .background(Color.red)
                    .cornerRadius(10)
                    .offset(x:0, y: -85)
            })
        }
    }
}
