//
//  SecondViewController.swift
//  Dz13
//
//  Created by Maxim Mitin on 2/23/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var redView: UIView!
    @IBOutlet weak var orangeView: UIView!
    @IBOutlet weak var blueView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    var flag = true
    
//Blue View Animation --------------------
    @IBAction func blueTap(_ sender: Any) {
        let leadingMargin: CGFloat = 20.0
        let originBLue = blueView.frame.origin.y
        print(originBLue)
        let y = view.frame.size.height - leadingMargin - blueView.frame.size.height
        let y2 = y + blueView.frame.size.height + leadingMargin - view.frame.size.height + 44
        if flag == true {
            flag.toggle()
        UIView.animate(withDuration: 1.0 ) {
            self.blueView.frame.origin.y = y
            
        }
        } else {
            flag.toggle()
            UIView.animate(withDuration: 1.0 ) {
                self.blueView.frame.origin.y = y2
        }
    }
    }
//Orange View Animation--------------------
    @IBAction func orangeTap(_ sender: Any) {
            let leadingMargin: CGFloat = 20.0
            let originOrange = orangeView.frame.origin.y
            print(originOrange)
            let y = view.frame.size.height - leadingMargin - orangeView.frame.size.height
            let y2 = y + orangeView.frame.size.height + leadingMargin - view.frame.size.height + 44
            if flag == true {
                flag.toggle()
            UIView.animate(withDuration: 1.0 ) {
                self.orangeView.frame.origin.y = y
                
            }
            } else {
                flag.toggle()
                UIView.animate(withDuration: 1.0 ) {
                    self.orangeView.frame.origin.y = y2
            }
        }
    }
//Red View Animation--------------------
    @IBAction func redView(_ sender: Any) {
            let leadingMargin: CGFloat = 20.0
            let originRed = redView.frame.origin.y
            print(originRed)
            let y = view.frame.size.height - leadingMargin - redView.frame.size.height
            let y2 = y + redView.frame.size.height + leadingMargin - view.frame.size.height + 44
            if flag == true {
                flag.toggle()
            UIView.animate(withDuration: 1.0 ) {
                self.redView.frame.origin.y = y
                
            }
            } else {
                flag.toggle()
                UIView.animate(withDuration: 1.0 ) {
                    self.redView.frame.origin.y = y2
            }
        }
    }
    
}
