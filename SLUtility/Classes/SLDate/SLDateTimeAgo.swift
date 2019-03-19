//
//  SLDateTimeAgo.swift
//  Pods-SLUtility_Example
//
//  Created by ankit@solulab on 19/03/19.
//

import Foundation

public extension Date {
    // Returns the number of years
    public func yearsCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.year], from: date, to: self).year ?? 0
    }
    // Returns the number of months
    public func monthsCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.month], from: date, to: self).month ?? 0
    }
    // Returns the number of weeks
    public func weeksCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.weekOfMonth], from: date, to: self).weekOfMonth ?? 0
    }
    // Returns the number of days
    public func daysCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: date, to: self).day ?? 0
    }
    // Returns the number of hours
    public func hoursCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.hour], from: date, to: self).hour ?? 0
    }
    // Returns the number of minutes
    public func minutesCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.minute], from: date, to: self).minute ?? 0
    }
    // Returns the number of seconds
    public func secondsCount(from date: Date) -> Int {
        return Calendar.current.dateComponents([.second], from: date, to: self).second ?? 0
    }
    // Returns time ago by checking if the time differences between two dates are in year or months or weeks or days or hours or minutes or seconds
    public func timeAgo(from date: Date) -> String {
        
        if yearsCount(from: date)   > 0 { return "\(yearsCount(from: date)) years ago"   }
        if monthsCount(from: date)  > 0 { return "\(monthsCount(from: date)) months ago"  }
        if weeksCount(from: date)   > 0 { return "\(weeksCount(from: date)) weeks ago"   }
        if daysCount(from: date)    > 0 { return "\(daysCount(from: date)) days ago"    }
        if hoursCount(from: date)   > 0 { return "\(hoursCount(from: date)) hours ago"   }
        if minutesCount(from: date) > 0 { return "\(minutesCount(from: date)) minutes ago" }
        if secondsCount(from: date) > 0 { return "\(secondsCount(from: date)) seconds ago" }
        return ""
    }
}
