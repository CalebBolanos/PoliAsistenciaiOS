//
//  FirstViewController.swift
//  PoliAsistenciaiOS
//
//  Created by Caleb on 13/05/18.
//  Copyright © 2018 Disoft. All rights reserved.
//

import UIKit

class InicioViewController: UIViewController {

    let sesion = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let idPer = sesion.integer(forKey: "idPer")
        let idTipo = sesion.integer(forKey: "idTipo")
        let nombre = sesion.string(forKey: "nombre")
        let paterno = sesion.string(forKey: "paterno")
        let materno = sesion.string(forKey: "materno")
        let genero = sesion.string(forKey: "genero")
        let numero = sesion.string(forKey: "num")
        let nacimiento = sesion.string(forKey: "nacimiento")
        let urlImagen = sesion.string(forKey: "urlImagen")
        
        print("inicio \(idPer) \(idTipo) \(nombre!) \(paterno!) \(materno!) \(genero!) \(numero!) \(nacimiento!) \(genero!) \(urlImagen!)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

