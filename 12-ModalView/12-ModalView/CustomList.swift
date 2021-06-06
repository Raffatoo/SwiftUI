//
//  CustomList.swift
//  12-ModalView
//
//  Created by Cruz Torres on 04/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct CustomList: View {
    
    @State var showModalView = false
    
    var body: some View {
        NavigationView{
            ZStack {
                List {
                        Section(header:Text("Este es el encabezado de grupo"),footer: Text("Este es el footer de grupo")){
                        Text("1")
                        Text("2")
                        Text("3")
                        Text("4")
                        Text("5")
                    }
                }
                .listStyle(GroupedListStyle())
                .navigationBarTitle(Text("Lista de Opciones"), displayMode: .inline)
                Button(action: {
                    self.showModalView = true
                }) {
                    Text("Show modal")
                }
            
                .sheet(isPresented: self.$showModalView) {
                    
                    ModalView()
                }
            }
        }
    }
}

struct CustomList_Previews: PreviewProvider {
    static var previews: some View {
        CustomList()
    }
}


struct ModalView: View {

  @Environment(\.presentationMode) private var presentationMode

  var body: some View {
    
    Group {
        VStack{
          //Text("Modal view")
          Button(action: {
             self.presentationMode.wrappedValue.dismiss()
          }, label: {
            Image(systemName: "chevron.down.circle")
                .font(.largeTitle)
                .foregroundColor(.red)
          })
          .padding(.trailing, 20)
          .padding(.top, 0)
        }
    }
  }
}
    

