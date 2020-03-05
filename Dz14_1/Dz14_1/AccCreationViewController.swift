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
    var user = [UserSave]()
    
    weak var delegate : AccCreationViewControllerDelegate?
    
    struct User {
        var newUser = [UserSave]()
    }
    
    var user1: User = User()
    
    struct UserSave {
        let firstName : String
        let lastName : String
        let sex : [Int]
        
        var fname: String {
            return firstName
        }
        var lname: String {
            return lastName
        }
        var rSex: [Int] {
            return sex
        }
    }
    
    var userToSave11 = UserSave (firstName: "11", lastName: "11", sex: [0])
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        delegate?.saveData(text: userToSave11.firstName, lastname: userToSave11.lastName, sex: userToSave11.sex)
        
        
   //    delegate?.saveData(text: userToSave11.firstName, lastname: userToSave11.lastName, sex: userToSave11.sex)
    }
    
    
// MARK: - Save Button
    @IBAction func saveButton(_ sender: Any) {
        
        let newUser1 = UserSave(firstName: firstTextField.text!, lastName: lastTextField.text!, sex: [sexSegmentControl!.selectedSegmentIndex])
        user1.newUser.append(newUser1)
        self.userToSave11 = newUser1
        
       /*
        func saving() -> UserSave {
            let userToSave1 = UserSave(firstName: firstTextField.text!, lastName: lastTextField.text!, sex: [sexSegmentControl!.selectedSegmentIndex])
            return userToSave1 as UserSave
            delegate?.saveData(text: userToSave1.firstName, lastname: userToSave1.lastName, sex: userToSave1.sex)
            
        }
        */
    }
// MARK: - Close Button
    @IBAction func closeButton(_ sender: Any) {
    }
    

}
