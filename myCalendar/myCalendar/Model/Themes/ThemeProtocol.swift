//
//  ThemeProtocol.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 13.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

protocol ThemeProtocol {
    var backgroundColor: UIColor { get }
    var backgroundImage: UIImage? { get }
    var MainTextColor: UIColor { get }
    var ContrastTextColor: UIColor { get }
    var highlightedButtonColor: UIColor { get }
    var tabBarBackgroundColor: UIColor { get }
    
}
