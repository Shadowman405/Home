//
//  FibonachiViewController.swift
//  Dz15
//
//  Created by Maxim Mitin on 3/5/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class FibonachiViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var fibNumbers: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        fibonachiSum()
    }
    func fibonachiSum() {
        fibNumbers.append(1)
        fibNumbers.append(1)
        var i = 2
        while fibNumbers.last! < 1_000_000 {
            let c = fibNumbers[i-2] + fibNumbers[i-1]
            fibNumbers.append(c)
            i += 1
        }
        fibNumbers = fibNumbers.dropLast()
    }
}

extension FibonachiViewController : UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        fibNumbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        if cell == nil {
            cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        }
        cell!.textLabel?.text = String(fibNumbers[indexPath.row])
        return cell!
    }
}
