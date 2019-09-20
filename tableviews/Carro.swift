//
//  Carro.swift
//  tableviews
//
//  Created by Alumno on 9/20/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import Foundation
class Carro {
    
    var placa : String
    var modelo : String
    var marca : String
    var año : String
    
    init(placa: String, modelo: String,
         marca: String, año: String) {
        self.placa = placa
        self.modelo = modelo
        self.marca = marca
        self.año = año
    }
}
