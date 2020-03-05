//
//  Photos.swift
//  Dz16
//
//  Created by Maxim Mitin on 3/4/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import Foundation

struct PhotoAdd {
    var name: String
    var imageName: String
    
    static func photo() -> [PhotoAdd] {
        var arrayToReturn = [PhotoAdd]()
        let newPhoto1 = PhotoAdd(name: "Some Photo", imageName: "male")
        let newPhoto2 = PhotoAdd(name: "Some Photo", imageName: "female")
        arrayToReturn.append(newPhoto1);arrayToReturn.append(newPhoto2)
        return arrayToReturn
    }
}

