//
//  SecondViewController.swift
//  Practice1
//
//  Created by Maxim Mitin on 2/25/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageViewSecondController: UIImageView!
    var photo: UIImage = UIImage(named: "image0")!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageViewSecondController.image = photo
    }

}
