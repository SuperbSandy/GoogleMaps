//
//  ViewController.swift
//  MapApp
//
//  Created by Admin Mac on 07/12/17.
//  Copyright © 2017 Sandeep. All rights reserved.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let mapView = MapView()
        view = mapView.MapView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

