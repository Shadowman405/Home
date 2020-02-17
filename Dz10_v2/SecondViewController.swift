//
//  SecondViewController.swift
//  Dz10_v2
//
//  Created by Maxim Mitin on 2/18/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    var hideBackButton : Bool = true
    var titleText : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func hiddenBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
