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
            else
                if let horarioNavigationController = viewController as? HorarioNavigationController{
                    if let horarioViewController = horarioNavigationController.viewControllers.first as? HorarioViewController{
                        horarioViewController.usr = usr
                        horarioViewController.id = id
                    }
            }
            else
                if let estadisticasNavigationController = viewController as? EstadisticasNavigationController{
                    if let estadisticasViewController = estadisticasNavigationController.viewControllers.first as? EstadisticasViewController{
                        estadisticasViewController.usr = usr
                        estadisticasViewController.id = id
                    }
            }
            else
                if let notificacionesNavigationController = viewController as? NotificacionesNavigationController{
                    if let notificacionesViewController = notificacionesNavigationController.viewControllers.first as? NotificacionesViewController{
                        notificacionesViewController.usr = usr
                        notificacionesViewController.id = id
                    }
            }
        }
    }
}
