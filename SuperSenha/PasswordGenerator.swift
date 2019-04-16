//
//  PasswordGenerator.swift
//  SuperSenha
//
//  Created by Denis Janoto on 25/01/2019.
//  Copyright © 2019 Denis Janoto. All rights reserved.
//

import Foundation

class PasswordGenerator{
    var numberOfCaracters:Int = 10
    var useLetters:Bool!
    var useNumbers:Bool!
    var useCapitalLetters:Bool!
    var useSpecialCaracters:Bool!
    
    var passwords:[String] = []
    
    private let letter = "abcdefghijlmnopqrstuvxz"
    private let specialCaracters = "!@#$%ˆ&*()_+}{:?><"
    private let numbers = "1234567890"
    
    init( numberOfCaracters:Int,useLetters:Bool!,useNumbers:Bool!, useCapitalLetters:Bool,useSpecialCaracters:Bool!) {
        
        var numChars = min(numberOfCaracters, 16)
        numChars = max(numChars, 1)
        self.numberOfCaracters = numChars
        self.useLetters = useLetters
        self.useNumbers = useNumbers
        self.useCapitalLetters = useCapitalLetters
        self.useSpecialCaracters = useSpecialCaracters
    }
    
    //Generate Keys
    func generate(total:Int)->[String]{
        passwords.removeAll()
        var universe:String=""
        
        if useLetters{
            universe+=letter
        }
        if useNumbers{
            universe+=numbers
        }
        if useSpecialCaracters{
            universe+=specialCaracters
        }
        if useCapitalLetters{
            universe+=letter.uppercased()
        }
        
        var universeArray = Array(universe)
        while  passwords.count < total{
            var password = ""
            for _ in 1...numberOfCaracters{
                let index = Int(arc4random_uniform(UInt32(universeArray.count)))
                password+=String(universeArray[index])
            }
            passwords.append(password)
        }
        
        return passwords
        
    }
    
}
