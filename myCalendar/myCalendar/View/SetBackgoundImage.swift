//
//  SetBackgoundImage.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

func setBackgoundImage(vc: UIViewController) {
    let background = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: height))
    background.image = #imageLiteral(resourceName: "background_View")
    vc.view.addSubview(background)
    
}
