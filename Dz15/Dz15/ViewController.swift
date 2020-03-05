//
//  ViewController.swift
//  Dz15
//
//  Created by Maxim Mitin on 3/5/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var colors: [UIColor] = [.red, .black , .blue , .systemPink , .lightGray]
    var name: [String] = ["red", "black", "blue", "pink", "gray"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
    }

}

extension ViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell.init(style: .default, reuseIdentifier: "cell")
        }
        let index = indexPath.row
        let color = colors[index]
        
        cell?.textLabel?.textColor = color
        cell?.textLabel?.text = color.colorName
        
        return cell!
    }
    
    
}

extension UIColor {
    var colorName: String {
    get { // .blue, .green, .cyan, .black
            if self == .red {
                return "red"
            } else if self == .black {
                return "black"
            } else if self == .blue {
                return "blue"
            } else if self == .systemPink {
                return "pink"
            } else if self == .lightGray {
                return "gray"
            } else {
                return "No name"
            }
        }
    }
}
