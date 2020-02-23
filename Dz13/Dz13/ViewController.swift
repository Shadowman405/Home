//
//  ViewController.swift
//  Dz13
//
//  Created by Maxim Mitin on 2/23/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    var currentRotation: CGFloat = 0
//Turn Image to Left----------------------------------
    @IBAction func leftButton(_ sender: Any) {
        currentRotation -= .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.imageView.transform = CGAffineTransform(rotationAngle: self.currentRotation)
        }
    }
//Turn Image to Right----------------------------------
    @IBAction func rightButton(_ sender: Any) {
        currentRotation += .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.imageView.transform = CGAffineTransform(rotationAngle: self.currentRotation)
        }
    }
}
