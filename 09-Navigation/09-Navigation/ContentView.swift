//
//  EtructView.swift
//  08-list
//
//  Created by Cruz Torres on 18/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var courses = [
        Course(name: "Aprende firebase desde cero", image: "firebase"),
        Course(name: "Curso avanzado de Csharp", image: "csharp"),
        Course(name: "Kotlin Introduccion a la Programacion", image: "kotlin"),
        Course(name: "Curso Maestro de Python 3, aprende desde cero", image: "python", feature: true),
        Course(name: "Vue, la guia completa, vue composition", image: "vue"),
        Course(name: "Node: De cero a esperto", image: "node"),
        Course(name: "Swiftf - iOS 14, aplicaciones moviles", image: "ios14"),
        Course(name: "Administracion de proyectos git", image: "git", feature: true)
    ]
    
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [
            .font: UIFont(name:"Times New Roman", size: 32)!,
            .foregroundColor: UIColor.systemGreen
        ]
        appearance.largeTitleTextAttributes = [
            .font: UIFont(name: "Times New Roman", size: 18)!,
            .foregroundColor: UIColor.systemGreen
        ]
        
        appearance.setBackIndicatorImage(
                UIImage(systemName: "arrow.left.circle.fill"),
                transitionMaskImage: UIImage(systemName: "arrow.left.circle")
        )
        
        UINavigationBar.appearance().tintColor = .green
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        
        NavigationView{
        
            List(courses.indices){ idx in
                NavigationLink(destination: DetailView(course: self.courses[idx])){
                if self.courses[idx].feature{
                    CourseFullImageRow(course: self.courses[idx])
                } else {
                    CurseRoundedRow(course: self.courses[idx])
                }
              }
            }
            .navigationBarTitle("Cursos Udemy")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Course{
    var id = UUID()
    var name: String
    var image: String
    var feature: Bool = false
}

struct CurseRoundedRow: View {
    var course: Course
    var body: some View {
        HStack {
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(30)
            Text(course.name)
        }
    }
}

struct CourseFullImageRow: View {
    var course: Course
    
    var body: some View {
        ZStack{
            Image(course.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundColor(.black)
                        .opacity(0.46)
            )

            Text(course.name)
                .font(.system(.headline, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
            
        }
    }
}

