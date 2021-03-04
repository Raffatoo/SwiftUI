//
//  ContentView.swift
//  02_botones
//
//  Created by Cruz Torres on 10/05/20.
//  Copyright © 2020 Cruz Torres. All rights reserved.

import SwiftUI

struct ContentView: View {
    @State private var showAlert : Bool = false
    @State private var showActionSheet = false

    
    var alert:Alert {
        Alert(title: Text("ALERTA"), message: Text("Soy Alerta"), dismissButton: .cancel(Text("OK")))
    }
    
    var actionSheet : ActionSheet {
        ActionSheet(title: Text("MENU"), message: Text("Seleccionar una Opción"), buttons: [.default(Text("Galeria")), .default(Text("Camara")), .default(Text("Cancelar"))])
        }
    
    
    var body: some View {
        VStack(alignment: .center, spacing: 20 ){
            Text("Curso de Swift").font(.largeTitle).foregroundColor(.blue).underline()
            Text("Curso de Swift").font(.headline).foregroundColor(.blue).bold()
            Spacer()
            HStack(alignment:.center, spacing: 10){
                Button(action:{
                    self.showAlert.toggle()
                }){
                    HStack{
                        Image(systemName: "rectangle.grid.1x2.fill")
                            .foregroundColor(.white)
                        Text("ALERTA")
                            .foregroundColor(.white)
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.green)
                .cornerRadius(10)
                    .alert(isPresented: self.$showAlert) { () -> Alert in self.alert }
            
                Button(action:{
                    // formato
                    self.showActionSheet.toggle()
                }){
                    HStack{
                        Image(systemName: "folder.fill")
                            .foregroundColor(.white)
                        Text("ALERTA SHEET")
                            .foregroundColor(.white)
                            .font(.headline)
                    }.padding(.all)
                }.background(Color.red)
                    .actionSheet(isPresented: self.$showActionSheet) { () -> ActionSheet in
                        self.actionSheet
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
