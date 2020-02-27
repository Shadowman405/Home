//
//  AccCreationViewController.swift
//  Dz14_1
//
//  Created by Maxim Mitin on 2/27/20.
//  Copyright © 2020 Maxim Mitin. All rights reserved.
//

import UIKit

protocol  AccCreationViewControllerDelegate: AnyObject {
    func saveData (text: String, lastname: String, sex: [Int])
}

class AccCreationViewController: UIViewController {
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var lastTextField: UITextField!
    @IBOutlet weak var sexSegmentControl: UISegmentedControl!
    
    weak var delegate : AccCreationViewControllerDelegate?
    
    struct UserSave {
        var firstName = String()
        var lastName = String()
        var sex = [Int]()
    }
    
    //var userToSave = UserSave(firstName: "", lastName: "", sex: [])
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.saveData(text: firstTextField.text!, lastname: lastTextField.text!, sex: [sexSegmentControl!.selectedSegmentIndex])
        
        
        //delegate?.saveData(text: userToSave.firstName, lastname: userToSave.lastName, sex: userToSave.sex)
    }
    
    
// MARK: - Save Button
    @IBAction func saveButton(_ sender: Any) {
        func saving() -> UserSave {
            let userToSave1 = UserSave(firstName: firstTextField.text!, lastName: lastTextField.text!, sex: [sexSegmentControl!.selectedSegmentIndex])
            return userToSave1 as UserSave
            delegate?.saveData(text: userToSave1.firstName, lastname: userToSave1.lastName, sex: userToSave1.sex)
            
        }
        
    }
// MARK: - Close Button
    @IBAction func closeButton(_ sender: Any) {
    }
    

}
