//
//  ViewController.swift
//  ListadoMotos
//
//  Created by macosfreddy on 10/4/20.
//  Copyright © 2020 macosfreddy. All rights reserved.
//

import UIKit

//AGREGAR LOS CLASES PICKERVIEW DATA Y DELEGATE
class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet weak var pvListaMotos: UIPickerView!
    
    
    @IBOutlet weak var tfMotoSeleccionada: UITextField!
    
    var StrMotoSeleccionada: String = ""
    var ListaMotos = [Moto]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let moto1 =    Moto(pNombre: "Moto Honda", pMarca: "XLR150L", pPeso: "116.5kg", pRendimiento: "28km/L")

        let moto2 =    Moto(pNombre: "Moto Italika", pMarca: "150SZ", pPeso: "116.5kg", pRendimiento: "30km/L")
        let moto3 =    Moto(pNombre: "Moto Susuki", pMarca: "GZ150", pPeso: "150.5kg", pRendimiento: "26km/L")
        let moto4 =    Moto(pNombre: "Moto Yamaha", pMarca: "XTZ150", pPeso: "131.0kg", pRendimiento: "25km/L")

        
        ListaMotos = [moto1,moto2,moto3,moto4]
    
        
        pvListaMotos.dataSource = self
        pvListaMotos.delegate = self
        // Do any additional setup after loading the view.
        
        
    }
    
    //EVENTO ACTION
    
    @IBAction func btnVerDetalle(_ sender: Any)
    {
        let oStoryBoard: UIStoryboard=UIStoryboard(name:"Main",bundle:nil)
          
          //instanciar controlador con ID llamado viewImpresion
          let oPantallaImpresion=oStoryBoard.instantiateViewController(withIdentifier:"detalle1010") as! ViewDetalleController
          
          //asignar instancia de variables
        
        for lista in ListaMotos {
           
            if(tfMotoSeleccionada.text == lista.nombre){
                
                oPantallaImpresion.Nombre = lista.nombre
                oPantallaImpresion.Marca = lista.marca
                oPantallaImpresion.Peso = lista.Peso
                oPantallaImpresion.Rendimiento = lista.rendimiento
                       
            }
        }
       
          
          
          self.present(oPantallaImpresion, animated: true, completion:nil)
    }
    
    //METODOS DE LA CLASE PICKER
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return ListaMotos.count
    }
    
    func pickerView(_ pickerView: UIPickerView,didSelectRow row: Int, inComponent component: Int){
        StrMotoSeleccionada=ListaMotos[row].nombre
        tfMotoSeleccionada.text=StrMotoSeleccionada
    }
    
    func pickerView(_ pickerView: UIPickerView,titleForRow row: Int,forComponent component: Int) -> String? {
        return ListaMotos[row].nombre
    }

}

