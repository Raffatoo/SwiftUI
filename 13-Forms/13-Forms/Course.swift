//
//  Course.swift
//  13-Forms
//
//  Created by Cruz Torres on 05/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import Foundation


struct Course: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var type: String
    var priceLevel: Int
    var featured: Bool = false
    var purchased: Bool = false
}
