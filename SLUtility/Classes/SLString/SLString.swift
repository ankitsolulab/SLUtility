//
//  SLString.swift
//  Pods-SLUtility_Example
//
//  Created by Ankit@Solulab on 19/03/19.
//

import Foundation

public extension String {
    
    //Remove white space character and new line character.
    func removeWhiteSpaceAndNewLine() -> String
    {
        var str = self.trimmingCharacters(in: NSCharacterSet.whitespaces)
        str = str.trimmingCharacters(in: NSCharacterSet.newlines)
        return str
    }
    
    //Validation of url
    func validateStringToURL() -> Bool {
        if let url  = NSURL(string: self) {
            return UIApplication.shared.canOpenURL(url as URL)
        }
        return false
    }
    
    //Validation for email address
    func isValidEmail() -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
}
