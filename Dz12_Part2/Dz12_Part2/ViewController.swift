//
//  ViewController.swift
//  Dz12_Part2
//
//  Created by Maxim Mitin on 2/23/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var TextField: UITextField!
    @IBOutlet weak var showButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    var bird:String? = "bird"
    var lion:String? = "lion"
    var butterfly:String? = "butterfly"
    var dog:String? = "dog"
    var ladybug:String? = "ladybug"
    
    @IBAction func navigationButton(_ sender: Any) {
        self.performSegue(withIdentifier: "ImageScreen", sender: sender )
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        var textFromTextField = TextField.text!
        
    }

}


