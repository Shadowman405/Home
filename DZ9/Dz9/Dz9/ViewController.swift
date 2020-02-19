//
//  ViewController.swift
//  Dz9
//
//  Created by Maxim Mitin on 2/19/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var colorView: UIView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
//redButton
    @IBAction func redButtonClick(_ sender: Any) {
        let secVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secVC, animated: true)
        secVC.backColor = .red
    }
//GreenButton
    @IBAction func greenButtonClick(_ sender: Any) {
        let secVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secVC, animated: true)
        secVC.backColor = .green
    }
//blueButton
    @IBAction func blueButtonClick(_ sender: Any) {
        let secVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secVC, animated: true)
        secVC.backColor = .blue
    }
    
//valuesForSlider
    var colorForSlider: UIColor {
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        let color = UIColor(red: CGFloat(red) / 255.0,
                             green: CGFloat(green) / 255.0,
                             blue: CGFloat(blue) / 255.0,
                             alpha: 1.0)
        return color
    }
    
//sliderGroup
    @IBAction func sliderChange(_ sender: Any) {
        colorView.backgroundColor = colorForSlider
    }
//buttonForSecView
    @IBAction func paintSecView(_ sender: Any) {
        let secVC = storyboard?.instantiateViewController(identifier: "SecondViewController") as! SecondViewController
        navigationController?.pushViewController(secVC, animated: true)
        secVC.backColor = colorForSlider
    }
    
    
}

//

