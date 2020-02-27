//
//  ViewController.swift
//  Practice1
//
//  Created by Maxim Mitin on 2/24/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imagesCollection = [UIImage] ()
    var currentRotation: CGFloat = 0
    var next1 = 0
    
    @IBOutlet weak var imagePhoto: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for i in 0...4 {
            let image =  UIImage(named: "image\(i)")!
            imagesCollection.append(image)
        }
        imagePhoto.image = imagesCollection[0]

    }
//Rotate Button Left-----------------
    @IBAction func rotateLeft(_ sender: Any) {
        currentRotation -= .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.imagePhoto.transform = CGAffineTransform (rotationAngle: self.currentRotation)
        }
        
    }
//Rotate Button Right----------------
    @IBAction func rotateRight(_ sender: Any) {
        currentRotation += .pi / 2
        UIView.animate(withDuration: 1.0) {
            self.imagePhoto.transform = CGAffineTransform (rotationAngle: self.currentRotation)
        }
    }
//Next Photo Button----------------
    @IBAction func nextPhoto(_ sender: Any) {
        if next1 < imagesCollection.count {
            imagePhoto.image = imagesCollection[next1]
            self.next1 += 1
        } else {
            next1 = 0
        }
        print(next1)
    }
//Previous Photo Button----------------
    @IBAction func previousPhoto(_ sender: Int) {
        if next1 < imagesCollection.count && next1 > 0 {
            imagePhoto.image = imagesCollection[next1]
            next1 -= 1
        } else {
            imagePhoto.image = imagesCollection[0]
        }
        print(next1)
    }
//Tap Gester----------------
    @IBAction func tap(_ sender: Any) {
        performSegue(withIdentifier: "present", sender: nil )
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       // let tapGesterRecognizer =  sender as! UITapGestureRecognizer
        //tapGesterRecognizer.view?.largeContentImage = imagePhoto.image
        let secondViewController = segue.destination as! SecondViewController
        secondViewController.photo = imagePhoto.image!
    }
}
