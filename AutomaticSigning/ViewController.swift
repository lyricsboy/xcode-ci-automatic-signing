//
//  ViewController.swift
//  AutomaticSigning
//
//  Created by Brian Hardy on 11/19/16.
//  Copyright © 2016 Ponystyle Industries. All rights reserved.
//

import UIKit
import AutomaticSigningCore

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = stringFromFramework()
    }


}

