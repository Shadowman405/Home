//
//  ViewController.swift
//  Dz10_v2
//
//  Created by Maxim Mitin on 2/18/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var switchForViews: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func showSecondView(_ sender: Any) {
        if switchForViews.isOn {
        let titleForSecView = textField.text
        let secView = storyboard?.instantiateViewController(identifier: "SecondViewController")
        navigationController?.pushViewController(secView!, animated: true)
        secView?.title = titleForSecView
        } else {
            let titleForSecView = textField.text
            let secView = storyboard?.instantiateViewController(identifier: "SecondViewController")
            secView?.title = titleForSecView
            present(secView!, animated: true, completion: nil)
        }
        
        
    
}
}
