//
//  CalendarMonthsModel.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 22.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import Foundation

class CalendarMonthModel {
    
    // list that contains every month of the year as String
    let arrMonths = ["Januar", "Februar", "März", "April", "Mai",
                     "Juni", "Juli", "August", "September", "Oktober",
                     "November", "Dezember"]
    
    
    // list of days a month can potentially have
    let arrDays = ["1", "2", "3", "4", "5", "6","7","8","9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31"]
    
    // contains days per month (-1 because list arrDays starts at 0)
    // days of february ar more of a placeholder, additional function to calculate them correctly
    let daysPerMonth = [30, 27, 30, 29, 30, 29, 30, 30, 29, 30, 29, 30]
    
    
    // the actual current month and year
    var currentMonth: Int
    var currentYear: Int
    
    
    // the month and year currently displayed on screen
    var displayedMonth: Int
    var displayedYear: Int
    
    
    // constructor
    init() {
        currentMonth = Calendar.current.component(.month, from: Date())-1
        currentYear = Calendar.current.component(.year, from: Date())
        
        displayedMonth = currentMonth
        displayedYear = currentYear
    }
    
    // returns a String containing given Month and Year
    func monthYearToString(month: Int, year: Int) -> String{
        let MonthYearString = "\(arrMonths[month]) \(year)"
        return MonthYearString
    }
    
    // returns a String containing current month and year
    func currentMonthYearToString() -> String {
        let currentMonthYearString = monthYearToString(month: currentMonth, year: currentYear)
        return currentMonthYearString
    }
    
    // returns String containing the month 1 higher than displayed month
    func nextMonthToString() -> String{
        if displayedMonth < 11 {
           displayedMonth = displayedMonth + 1
        } else {
            displayedMonth = 0
            displayedYear = displayedYear + 1
        }
        
        let nextMonthString = monthYearToString(month: displayedMonth, year: displayedYear)
        return nextMonthString
    }
    
    // returns String containing the month 1 lower than displayed month
    func previousMonthToString() -> String {
        if displayedMonth > 0 {
            displayedMonth = displayedMonth - 1
        } else {
            displayedMonth = 11
            displayedYear = displayedYear - 1
        }
        
        let previousMonthString = monthYearToString(month: displayedMonth, year: displayedYear)
        return previousMonthString
    }
    
    
    // calculates correct amount of days in february
    func calcFebruaryDays(year: Int) -> Int {
        var februaryDays: Int
        if (year % 4 == 0) {
            februaryDays = 28
        } else {
            februaryDays = 27
        }
        return februaryDays
    }
    
    
    
    
    
}
