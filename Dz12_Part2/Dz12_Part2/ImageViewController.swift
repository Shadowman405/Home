//
//  ImageViewController.swift
//  Dz12_Part2
//
//  Created by Maxim Mitin on 2/23/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
        var imageToPresent: UIImage?
        var imageViewContentMode: UIView.ContentMode = .scaleAspectFit
        
        override func viewDidLoad() {
            super.viewDidLoad()

            imageView.contentMode = imageViewContentMode
            imageView.image = imageToPresent
        }
    }
