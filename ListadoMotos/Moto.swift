//
//  Moto.swift
//  ListadoMotos
//
//  Created by macosfreddy on 10/4/20.
//  Copyright © 2020 macosfreddy. All rights reserved.
//

import UIKit

class Moto: NSObject {
    var nombre:String=""
    var marca:String=""
    var Peso:String=""
    var rendimiento:String=""
    
    override init(){
        self.nombre = ""
        self.marca = ""
        self.Peso = ""
        self.rendimiento = ""
        
    }
    
    init (pNombre: String,pMarca: String,pPeso:String,pRendimiento:String)
    {
        self.nombre = pNombre
            self.marca = pMarca
            self.Peso = pPeso
            self.rendimiento = pRendimiento
    }

}

