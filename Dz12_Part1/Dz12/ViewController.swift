//
//  ViewController.swift
//  Dz12
//
//  Created by Maxim Mitin on 2/21/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var firstBlueView: UIView!
    @IBOutlet var secondBlueView: UIView!
    @IBOutlet var redView: UIView!
    @IBOutlet var firstGreenView: UIView!
    @IBOutlet weak var secondGreenView: UIView!
    
    var flafForViews = false
    
    var viewsCollection: [UIView] {
        return [firstBlueView, secondBlueView, redView, firstGreenView, secondGreenView] }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
 //Button for changing view's color to black and set them to default value again (сделал до урока)
    @IBAction func changeColorButton(_ sender: Any) {
        if firstBlueView.backgroundColor == .blue {
            firstBlueView.backgroundColor = UIColor.black
            secondBlueView.backgroundColor = UIColor.black
            redView.backgroundColor = UIColor.black
            firstGreenView.backgroundColor = UIColor.black
            secondGreenView.backgroundColor = UIColor.black
        }
        else {
            firstBlueView.backgroundColor = UIColor.blue
            secondBlueView.backgroundColor = UIColor.blue
            redView.backgroundColor = UIColor.red
            firstGreenView.backgroundColor = UIColor.green
            secondGreenView.backgroundColor = UIColor.green
        }
    }
//Button for round all view's
    @IBAction func roundViewsButton(_ sender: Any) {
        flafForViews = !flafForViews
        
    /*  ---------------Изначально делал так (до урока), не мог понять как вложить вьюхи в массив. После урока понял что нужны были комп. пропертис , поэтому перепишу чтобы было красиво. -------
         
        flafForViews = !flafForViews
        if flafForViews == false {
            firstBlueView.layer.cornerRadius = 10.0
            secondBlueView.layer.cornerRadius = 10.0
            redView.layer.cornerRadius = 10.0
            firstGreenView.layer.cornerRadius = 10.0
            secondGreenView.layer.cornerRadius = 10.0
        } else {
            firstBlueView.layer.cornerRadius = 0
            secondBlueView.layer.cornerRadius = 0
            redView.layer.cornerRadius = 0
            firstGreenView.layer.cornerRadius = 0
            secondGreenView.layer.cornerRadius = 0
 */
        
        viewsCollection.forEach { view in view.layer.cornerRadius = flafForViews ? 10.0 : 0}
        }
    }

//так же потом разобрался с констрейнтом aspect ratio

