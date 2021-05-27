//
//  DriversList.swift
//  10-CustomView
//
//  Created by Cruz Torres on 27/05/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import SwiftUI

struct DriversList: View {
    var body: some View {
        NavigationView{
            List(drivers){
                driver in
                NavigationLink(destination:DriverDetail(driver: driver)){
                    DriverRow(driver: driver)
                }
            }.navigationBarTitle(Text("Formula 1 - 2019"), displayMode: .large)
        }
    }
}

struct DriversList_Previews: PreviewProvider {
    static var previews: some View {
        DriversList()
    }
}
