//
//  PhotoTableViewCell.swift
//  Dz16
//
//  Created by Maxim Mitin on 3/4/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {
    @IBOutlet private weak var photoImage: UIImageView!
    @IBOutlet private weak var photoLabel: UILabel!
    
    func set(photos: PhotoAdd){
        photoImage.image = photos.imageName
        photoLabel.text = photos.name
    }
}
