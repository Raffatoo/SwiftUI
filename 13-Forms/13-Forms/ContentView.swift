//
//  ContentView.swift
//  13-Forms
//
//  Created by Cruz Torres on 05/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var courses = [
        Course(name: "Probabilidad y Variables Aleatorias para ML e IA", image: "maths", type:"Matematicas", priceLevel: 4, featured: true, purchased: true),
        Course(name: "Machine Learning de la A a la Z", image: "ml_az", type:"Machine Learning", priceLevel: 5),
        Course(name: "Resuelve problemas de Matemáticas con Sage y Python", image: "python", type:"Matematicas", priceLevel: 2, purchased: true),
        Course(name: "Aprueba la Selectividad con problemas resueltos", image: "selectividad", type:"Matematicas", priceLevel: 2),
        Course(name: "Curso de introducción a Swift UI desde cero", image: "swift", type:"Desarrollo Apps", priceLevel: 1, featured: true),
        Course(name: "TensorFlow 2: Curso de Actualización Completo", image: "tensorflow2", type:"Machine Learning", priceLevel: 3),
        Course(name: "Curso Completo de Unreal Engine de cero a experto", image: "unrealengine", type:"Videojuegos", priceLevel: 3),
        Course(name: "Curso de Unity 2019: Aprende a crear juegos de rol", image: "videogames", type:"Videojuegos", priceLevel: 2, featured: true, purchased: true)
    ]
    
    @State private var showActionSheet = false
    @State private var selectedCourse: Course?
    
    var body: some View {
        NavigationView{
            List {
                ForEach(courses){ course in
                    ZStack{
                    
                        CourseRoundImageRow(course:course)
                            .contextMenu{
                                Button(action: {
                                    self.setPurchased(item: course)
                                }) {
                                    HStack{
                                        Text("Comprar")
                                        Image(systemName: "checkmark.circle")
                                    }
                                }
                            
                                Button(action: {
                                    self.setFeatured(item: course)
                                }) {
                                    HStack{
                                        Text("Destacar")
                                        Image(systemName: "star")
                                    }
                                }
                        
                                Button(action: {
                                    self.delete(item: course)
                                }) {
                                    HStack{
                                        Text("Eliminar")
                                        Image(systemName: "trash")
                                    }
                                }
                        }
                        .onTapGesture {
                            self.selectedCourse = course
                        }
                        NavigationLink(destination: DetailView(course: course)){
                            EmptyView()
                        }
                    }
                }
                .onDelete { (indexSet) in
                    self.courses.remove(atOffsets: indexSet)
                }
                .actionSheet(isPresented: self.$showActionSheet){
                    ActionSheet(title: Text("Indica tu action a realizar"),
                                message: nil,
                                buttons: [
                                    .default(Text("Marcar como favorito"), action: {
                                        if let selectedCourse = self.selectedCourse{
                                            self.setFeatured(item: selectedCourse)
                                        }
                                    }),
                                    .destructive(Text("Eliminar Curso"), action: {
                                        if let selectedCourse =
                                            self.selectedCourse{
                                            self.delete(item: selectedCourse)
                                        }
                                    }),
                                    .cancel()
                    ])
                }
            }
            .navigationBarTitle("Cursos online de JB", displayMode: .automatic)
        }
        
    }
    
    private func setFeatured(item course: Course) {
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses[idx].featured.toggle()
        }
    }
    
    private func setPurchased(item course: Course) {
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses[idx].purchased.toggle()
        }
       
    }
    
    private func delete(item course: Course){
        if let idx = self.courses.firstIndex(where: {$0.id == course.id}){
            self.courses.remove(at: idx)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CourseRoundImageRow: View {
    var course : Course
    var body: some View {
        HStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
                .padding(.trailing, 10)
            
            VStack(alignment: .leading) {
                Text(course.name)
                    .font(.system(.body, design: .rounded))
                    .bold()
                HStack{
                    Text(course.type)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Spacer()
                    Text(String(repeating: "€", count: course.priceLevel))
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    if course.featured {
                        Image(systemName: "star.fill")
                            .font(.subheadline)
                            .foregroundColor(.yellow)
                    }
                    if course.purchased {
                        Image(systemName: "checkmark.circle.fill")
                            .font(.subheadline)
                            .foregroundColor(.green)
                    }
                   
                }
            }
           
        }
    }
}
