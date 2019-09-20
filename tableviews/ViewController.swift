//
//  ViewController.swift
//  tableviews
//
//  Created by MaestroD1 on 9/13/19.
//  Copyright © 2019 MaestroD1. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
   
    var carros : [Carro] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        carros.append(Carro(placa: "C4BR0N85", modelo: "Rancher", marca: "Jeep", año: "2018"))
        carros.append(Carro(placa: "MARS98", modelo: "Camaro", marca: "Chevrolet", año: "2000"))
        carros.append(Carro(placa: "ELHU3S0", modelo: "Challenger", marca: "Dodge", año: "2020"))
        carros.append(Carro(placa: "ABCD56", modelo: "Corolla", marca: "Toyota", año: "2015"))
        carros.append(Carro(placa: "3LB3B3", modelo: "A3", marca: "Audi", año: "2017"))
        carros.append(Carro(placa: "P4PS22", modelo: "Sierra", marca: "GMC", año: "2020"))
        
        
    }
    
    //Numero de secciones (siempre 1)
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    

    
    
    //Numero de filas por seccion
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carros.count
    }
    
    //Contenido de cada celda
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaCarro") as? CeldaCarroController
        
        
        celda?.lblPlaca.text = carros[indexPath.row].placa
        celda?.lblModelo.text = carros[indexPath.row].modelo
        celda?.lblMarca.text = carros[indexPath.row].marca
        celda?.lblAño.text = carros[indexPath.row].año
        
        return celda!
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 120
    }
    
 
}

