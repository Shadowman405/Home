//
//  PhotoAddViewController.swift
//  Dz16
//
//  Created by Maxim Mitin on 3/4/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

class PhotoAddViewController: UIViewController,
                UIImagePickerControllerDelegate,
                UINavigationControllerDelegate,UITableViewDelegate {
    @IBOutlet weak var textFiled: UITextField!
    @IBOutlet weak var imageViewAdding: UIImageView!
    let pickerController = UIImagePickerController()

    override func viewDidLoad() {
        super.viewDidLoad()
        pickerController.delegate = self
        

    }
//Add Button---------------------------------------------------
    @IBAction func addButton(_ sender: Any) {
        pickerController.allowsEditing = false
        pickerController.sourceType = .photoLibrary
        present(pickerController, animated: true, completion: nil)
    }
//Save Button---------------------------------------------------
    @IBAction func saveButton(_ sender: Any) {
        var imageFrom = imageViewAdding.image!
        var textFor = textFiled.text!
        var objectToSave = PhotoAdd(name: textFor, imageName: imageFrom)
        photos.append(objectToSave)
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
    }
//Picker Controller Choose Image and Dismiss----------------------------------------------
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage] as? UIImage {
            imageViewAdding.image = image
        }
        pickerController.dismiss(animated: true, completion: nil)
    }
    
}
