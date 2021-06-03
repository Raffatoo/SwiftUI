//
//  Alumno.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 02/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Alumno: Identifiable {
    var id: Int
    var name: String
    var foto: String
    var curp: String
    var rfc: String
    var nacimiento: String
    var email: String
    var localidad: String
}

struct Grupo: Identifiable {
    var id: Int
    var grupo: String
    var escudo: String
}

let Primero = Grupo(id: 1, grupo: "Amarillos", escudo: <#T##String#>)
