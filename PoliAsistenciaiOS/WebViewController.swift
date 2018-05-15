//
//  WebViewController.swift
//  PoliAsistenciaiOS
//
//  Created by Caleb on 15/05/18.
//  Copyright © 2018 Disoft. All rights reserved.
//

import Foundation
import UIKit
import WebKit

class WebViewController : UIViewController{
    @IBOutlet weak var webView: WKWebView!
    override func viewDidLoad() {
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let url : URL = URL(string: "http://192.168.1.65:8080/poliAsistenciaWeb/iniciarSesion")!
        let urlRequest : URLRequest = URLRequest(url: url)
        webView.load(urlRequest)
    }
}
