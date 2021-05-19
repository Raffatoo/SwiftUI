//
//  ContentView.swift
//  08-list
//
//  Created by Cruz Torres on 07/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var courseNames = [
               "Aprende Firebase de cero a esperto",
               "Curso C# basico - avanzado",
               "Kotlin Introduccion a la Programacion",
               "Curso Maestro de Python 3, aprende desde cero",
               "Vue, la guia completa, vue composition",
               "Node: De cero a esperto",
               "Swiftf - iOS 14, aplicaciones moviles",
               "Administracion de proyectos git",
               "Usando la seguridad a favor"]
    var courseImages = [
               "firebase", "csharp", "kotlin", "python", "vue", "node", "ios14", "git", "seguridad"]
    
    var body: some View {
        List( courseNames.indices, id:\.self){ index in
                Image(self.courseImages[index])
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 60, height: 60)
                    .clipped()
                    .cornerRadius(30)
                    
                Text(self.courseNames[index])
            }
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
