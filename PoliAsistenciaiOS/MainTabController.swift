//
//  MainTabController.swift
//  PoliAsistenciaiOS
//
//  Created by Caleb on 14/05/18.
//  Copyright © 2018 Disoft. All rights reserved.
//

import Foundation
import UIKit

class MainTabController : UITabBarController{
    
    var usr: String?
    var id: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let viewControllers = viewControllers else{
            return
        }
        
        for viewController in viewControllers{
            if let inicioNavigationController = viewController as? InicioNavigationController{
                if let inicioViewController = inicioNavigationController.viewControllers.first as? InicioViewController{
                    inicioViewController.usr = usr
                    inicioViewController.id = id
                }
            }
        }
    }
}
