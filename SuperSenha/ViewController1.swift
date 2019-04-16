//
//  ViewController.swift
//  SuperSenha
//
//  Created by Denis Janoto on 25/01/2019.
//  Copyright © 2019 Denis Janoto. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet weak var tfTotalPasswords: UITextField!
    @IBOutlet weak var tfNumberOfCaracters: UITextField!
    @IBOutlet weak var swLetters: UISwitch!
    @IBOutlet weak var swNumbers: UISwitch!
    
    @IBOutlet weak var swCapitalLetters: UISwitch!
    
    @IBOutlet weak var swSpecialLetters: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let passwordsViewController = segue.destination as! PasswordsViewController
        
        if let numberOfPasswords = Int(tfTotalPasswords.text!){
            passwordsViewController.numberOfPasswords = numberOfPasswords
        }
        
        if let numberOfCaracters = Int(tfNumberOfCaracters.text!){
            passwordsViewController.numberOfCaracters = numberOfCaracters
        }
        passwordsViewController.useLetters = swLetters.isOn
        passwordsViewController.useNumbers = swNumbers.isOn
        passwordsViewController.useSpecialCaracters = swSpecialLetters.isOn
        passwordsViewController.useCapitalLetters = swCapitalLetters.isOn
        
    }
    
}
