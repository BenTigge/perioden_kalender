//
//  ClassicTheme.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 13.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class ClassicTheme: ThemeProtocol {
    
    var tabBarBackgroundColor = UIColor.white
    var highlightedButtonColor = UIColor.darkGray
    var MainTextColor = UIColor.black
    var ContrastTextColor = UIColor.white
    var backgroundImage: UIImage?
    let backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background_View"))

    
    init() {
        backgroundImage = #imageLiteral(resourceName: "background_View")
    }
    
    
}
