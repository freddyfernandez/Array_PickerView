//
//  ViewDetalleController.swift
//  ListadoMotos
//
//  Created by macosfreddy on 10/4/20.
//  Copyright © 2020 macosfreddy. All rights reserved.
//

import UIKit

class ViewDetalleController: UIViewController {
    
    //Variable tipo Outlet
    @IBOutlet weak var tfNombre: UITextField!
    
    @IBOutlet weak var tfMarca: UITextField!
    
    @IBOutlet weak var tfPeso: UITextField!
    
    @IBOutlet weak var tfRendimiento: UITextField!
    
    
    var Nombre : String = ""
    var Marca : String = ""
    var Peso : String = ""
    var Rendimiento : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
               
               self.tfNombre.text = Nombre
               self.tfMarca.text = Marca
               self.tfPeso.text = Peso
               self.tfRendimiento.text = Rendimiento
        
        

        // Do any additional setup after loading the view.
    }
    


}
