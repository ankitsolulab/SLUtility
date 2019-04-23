//
//  SLString.swift
//  Pods-SLUtility_Example
//
//  Created by Ankit@Solulab on 19/03/19.
//

import Foundation
import UIKit


public extension UIView {
    
    // This will provide you to set corner radius to all UI Component.
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
    func setRoundCornerRadius() {
        layer.cornerRadius = self.frame.height / 2
        clipsToBounds = true
    }
    
    //Set corner radius
    func roundCorners(corners: UIRectCorner, radius: CGFloat, addShadow: Bool = false) {
        
    }
}


