//
//  Photos.swift
//  Dz16
//
//  Created by Maxim Mitin on 3/4/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//
import UIKit
import Foundation

struct PhotoAdd {
    var name: String
    var imageName: UIImage
    
    static func photo() -> [PhotoAdd] {
        var arrayToReturn = [PhotoAdd]()
        let newPhoto1 = PhotoAdd(name: "Some Photo", imageName: UIImage(named: "male")!)
        let newPhoto2 = PhotoAdd(name: "Some Photo", imageName: UIImage(named: "female")!)
        arrayToReturn.append(newPhoto1);arrayToReturn.append(newPhoto2)
        return arrayToReturn
    }
}

