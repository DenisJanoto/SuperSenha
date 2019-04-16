//
//  PasswordsViewController.swift
//  SuperSenha
//
//  Created by Denis Janoto on 25/01/2019.
//  Copyright © 2019 Denis Janoto. All rights reserved.
//

import UIKit

class PasswordsViewController: UIViewController {
    
    
    @IBOutlet weak var tvPasswords: UITextView!
    var numberOfCaracters:Int = 10
    var numberOfPasswords:Int = 1
    var useLetters:Bool!
    var useNumbers:Bool!
    var useSpecialCaracters:Bool!
    var useCapitalLetters:Bool!
    
    var passwordGenerator: PasswordGenerator!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generate()
    }
    
    
    func generate(){
        tvPasswords.scrollRangeToVisible(NSRange(location: 0, length: 0))
        tvPasswords.text = ""
        title = "Total de senhas: \(numberOfPasswords)"
        passwordGenerator = PasswordGenerator(numberOfCaracters: numberOfCaracters, useLetters: useLetters, useNumbers: useNumbers, useCapitalLetters: useCapitalLetters, useSpecialCaracters: useSpecialCaracters)
        
        let password = passwordGenerator.generate(total: numberOfPasswords)
        for passwords in password{
            tvPasswords.text.append(passwords+"\n\n")
        }
    }
    
    
    @IBAction func generate(_ sender: Any) {
        generate()
        
    }
    
    
}
