//
//  Devices.swift
//
//
//  Created by Ankit Kargathra

import UIKit

public class SLDevices: NSObject {
    
    public enum DeviceType {
        case iPhone4or4s
        case iPhone5or5s
        case iPhone6or6s
        case iPhone6por6sp
        case iPhoneX
        case iPad
    }

    
    // MARK: - Device is iPad
    public static var isIpad : Bool {
        return UIDevice.current.userInterfaceIdiom == .pad
    }
    
    // MARK: - Device is iPhone
    public static var isIphone : Bool {
        return UIDevice.current.userInterfaceIdiom == .phone
    }
    
    // MARK: - Device Screen Height
    public static var screenHeight : CGFloat {
        return UIScreen.main.bounds.size.height
    }
    
    // MARK: - Device Screen Width
    public static var screenWidth : CGFloat {
        return UIScreen.main.bounds.size.width
    }
    
    // MARK: - Device is Portrait
    public static var isPortrait : Bool {
        return UIDevice.current.orientation.isPortrait
    }
    
    // MARK: - Device is Landscape
    public static var isLandscape : Bool {
        return UIDevice.current.orientation.isLandscape
    }
    
    // MARK: - Get Device Type
    public static var deviceType : DeviceType? {
        // Need to match width also because if device is in portrait mode height will be different.
        if SLDevices.screenHeight == 480 || SLDevices.screenWidth == 480 {
            return DeviceType.iPhone4or4s
        } else if SLDevices.screenHeight == 568 || SLDevices.screenWidth == 568 {
            return DeviceType.iPhone5or5s
        } else if SLDevices.screenHeight == 667 || SLDevices.screenWidth == 667{
            return DeviceType.iPhone6or6s
        } else if SLDevices.screenHeight == 736 || SLDevices.screenWidth == 736{
            return DeviceType.iPhone6por6sp
        } else if SLDevices.screenHeight >= 812 || SLDevices.screenWidth >= 812{
            return DeviceType.iPhoneX
        } else {
            return DeviceType.iPad
        }
    }
    
    public static func getProportionalWidth(width:CGFloat, targetWidth:CGFloat) -> CGFloat {
        let size = (SLDevices.screenWidth > SLDevices.screenHeight) ? SLDevices.screenHeight : SLDevices.screenWidth
        return ((size * width) / targetWidth)
    }
    
    public static func getProportionalHeight(height:CGFloat, targetHeight:CGFloat) -> CGFloat {
        return (SLDevices.screenHeight * height) / targetHeight
    }
    
}
