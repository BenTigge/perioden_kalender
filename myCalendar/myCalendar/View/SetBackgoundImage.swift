//
//  SetBackgoundImage.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

// get screensize
let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

// sets Background of view to pink fading image
// gets UIViewController
// returns nothing
func setBackgoundImage(vc: UIViewController) {
    // create UIImageView with size of screen
    var background = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
    if UIDeviceOrientationIsLandscape(UIDevice.current.orientation) {
        background = UIImageView(frame: CGRect(x: 0, y: 0, width: height, height: width))
    }
    
    // set image
    
    if Theme.currentThemeEnum == .classic {
        background.image = Theme.currentTheme.backgroundImage
    } else {
        background.backgroundColor = Theme.currentTheme.backgroundColor
    }
    
    
    // adds subview to viewController
    vc.view.addSubview(background)
    
}
