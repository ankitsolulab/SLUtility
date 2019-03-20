//
//  SLString.swift
//  Pods-SLUtility_Example
//
//  Created by Ankit@Solulab on 19/03/19.
//

import Foundation

public extension String {
    
    //Remove white space character and new line character.
    public func trim() -> String
    {
        var str = self.trimmingCharacters(in: NSCharacterSet.whitespaces)
        str = str.trimmingCharacters(in: NSCharacterSet.newlines)
        return str
    }
    
    //Validation of url
    public func validateUrl() -> Bool {
        if let url  = NSURL(string: self) {
            return UIApplication.shared.canOpenURL(url as URL)
        }
        return false
    }
    
    public func emailValidation() -> Bool {
        return false
    }
}
