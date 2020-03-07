//
//  ViewController.swift
//  Dz16
//
//  Created by Maxim Mitin on 3/4/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

var photos = PhotoAdd.photo()

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
 //   var photos = PhotoAdd.photo()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
        }

    @objc func loadList(notification: NSNotification){
            self.tableView.reloadData()
    }
}
//-------------------------------------------
extension ViewController: UITableViewDataSource {
//Rows--------------------------------------------------
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return photos.count
    }
//Cell--------------------------------------------------
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var photo: [PhotoAdd]
        photo = photos
        let index = indexPath.row
        let photoInList = photo[index]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoTableViewCell") as! PhotoTableViewCell
        cell.set(photos: photoInList)
        return cell
    }
}
