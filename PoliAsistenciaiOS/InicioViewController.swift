//
//  FirstViewController.swift
//  PoliAsistenciaiOS
//
//  Created by Caleb on 13/05/18.
//  Copyright © 2018 Disoft. All rights reserved.

import UIKit

class InicioViewController: UIViewController {

    @IBOutlet weak var usuario: UILabel!
    @IBOutlet weak var idPersona: UILabel!
    
    var usr: String?
    var id: Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        usuario.text = usr
        idPersona.text = "\(String(describing: id))"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

