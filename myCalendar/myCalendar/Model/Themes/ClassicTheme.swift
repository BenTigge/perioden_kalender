//
//  ClassicTheme.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 13.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class ClassicTheme: ThemeProtocol {
    var backgroundImage: UIImageView?
    
    
    let backgroundColor = UIColor.white
    
    init () {
        backgroundImage = UIImageView(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height))
        backgroundImage!.image = #imageLiteral(resourceName: "background_View")
    }
    
    
}
