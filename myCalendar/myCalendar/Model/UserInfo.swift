//
//  UserInfo.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 13.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import Foundation

struct UserInfo: Codable {
    var firstName: String
    var lastName: String
    var fullName: String {
        return "\(firstName) \(lastName)"
    }
    var birtDate: Date
    var emailAdress: String
    
}
