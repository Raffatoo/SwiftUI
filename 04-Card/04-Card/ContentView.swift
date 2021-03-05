//
//  ContentView.swift
//  04-Card
//
//  Created by Cruz Torres on 03/03/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        //ScrollView(.horizontal, showsIndicators: false)
        ScrollView() {
            VStack{
                HStack{
                    Image("udemy")
                    Spacer()
                    Text("Marzo 2021")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                }.padding()
                Text("Nuevos Cursos 2020")
                    .font(.system(.largeTitle, design: .rounded))
                Text("Mejores calificados")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.light)
                    .foregroundColor(.secondary)
                Text("Siempre los Mejores Cursos estan Aqui.")
                    .font(.system(.footnote , design: .rounded))
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            
            cursoInfo(imgCurso: "swift", titleCurso: "Curso de wift de 0 a Experto", nameTeach: "Juan Gabriel Gomila Salas", ratingCurso: "4.7", costCurso: "$ 19.99", monedaCosto: "MXN", numberEstudents: "764 Estudiantes tomando curso", numberCertificate: "458 Certificados")
             cursoInfo(imgCurso: "mongo", titleCurso: "Mongo DB, 14 ejercicios", nameTeach: "Juan Gabriel Gomila Salas", ratingCurso: "4.5", costCurso: "$ 21.00", monedaCosto: "MXN", numberEstudents: "364 Estudiantes tomando curso", numberCertificate: "258 Certificados")
            cursoInfo(imgCurso: "sketch", titleCurso: "Sketch, Base para hacer UX/UI", nameTeach: "Humberto Aguilar Murano", ratingCurso: "4.9", costCurso: "$ 3.00", monedaCosto: "USD", numberEstudents: "64 Estudiantes tomando curso", numberCertificate: "58 Certificados")
            cursoInfo(imgCurso: "phyton", titleCurso: "Phyton entra al mundo de data", nameTeach: "Juan Gabriel Gomila Salas", ratingCurso: "4.8", costCurso: "$ 8.99", monedaCosto: "USD", numberEstudents: "364 Estudiantes tomando curso", numberCertificate: "158 Certificados")
                //.frame(300)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct cursoInfo: View {
    var imgCurso: String
    var titleCurso: String
    var nameTeach: String
    var ratingCurso: String
    var costCurso: String
    var monedaCosto: String
    var numberEstudents: String
    var numberCertificate: String
    
    
    
    var body: some View {
        VStack{
        Image(imgCurso)
        .resizable()
        .scaledToFit()
        .cornerRadius(10)
        //.frame(width: 300.0,height:200)
        HStack {
            VStack {
                HStack{
                    Text(titleCurso)
                        .font(.system(.headline, design: .rounded))
                        //.lineLimit(0)
                    Spacer()
                }
                HStack {
                    Text(nameTeach)
                        .font(.system(size: 14, design: .rounded))
                        .foregroundColor(.gray)
                    Spacer()
                }
                HStack {
                    Text(ratingCurso)
                        .font(.system(.title, design: .rounded))
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                    Spacer()
                }
            }
            VStack{
                Text(costCurso)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
                Text(monedaCosto)
                    .font(.system(.headline, design: .rounded))
                    .fontWeight(.bold)
            }
            .padding(.all)
            .background(Color.green)
            .cornerRadius(10)
            
        }
        HStack{
            Text(numberEstudents)
                .font(.system(.subheadline, design: .rounded))
                .foregroundColor(.gray)
                .fontWeight(.bold)
            Spacer()
            Text(numberCertificate)
                .font(.system(.subheadline, design: .rounded))
                .foregroundColor(.gray)
                .fontWeight(.bold)
        }
        }
        .padding()
        .background(Color(red: 240/255, green: 230/255, blue: 250/255))
        .cornerRadius(20)
    }
}
