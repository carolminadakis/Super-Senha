//
//  ViewController.swift
//  Caculator
//
//  Created by Ana Carolina Bernardes Minadakis on 18/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfTotalPassword: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swSpecialCharacters: UISwitch!
    @IBOutlet weak var swCapitalLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    @IBOutlet weak var tfNumberOfCharacters: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        if let numberOfPasswords = Int(tfTotalPassword.text!) {
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        if let numberOfCharacters = Int(tfNumberOfCharacters.text!) {
            passwordsViewController.numberOfCharacters = numberOfCharacters
    }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        passwordsViewController.userSpecialCharacters = swSpecialCharacters.isOn
        view.endEditing(true)
    }

}

