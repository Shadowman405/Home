//
//  ViewController.swift
//  Dz14_1
//
//  Created by Maxim Mitin on 2/27/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, AccCreationViewControllerDelegate {
    
    
    @IBOutlet weak var imageForUser: UIImageView!
    @IBOutlet weak var firstNameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    
    var sexForImage = [Int]()
    var firstNameFromLabel : String = ""
    var lastNameFromLabel : String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let secondViewController = segue.destination as! AccCreationViewController
        
        secondViewController.delegate = self
    }
    
    func saveData(text: String, lastname: String, sex: [Int]) {
        firstNameLabel.text = text
        lastNameLabel.text = lastname
        sexForImage = sex
    }
    
    func imageChange () {
        if sexForImage.startIndex <= 0 {
            imageForUser.image = UIImage(named: "male")
        }; if sexForImage.startIndex == 1 {
            imageForUser.image = UIImage(named: "female")
        } else {
            imageForUser.image = UIImage(named: "empty")
        }
    }

}

