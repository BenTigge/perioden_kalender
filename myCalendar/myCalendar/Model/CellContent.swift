//
//  CellContent.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 14.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit


// custom cell for ForYouView
struct CellContent {
    
    //each cell contains a logo and Text
    var content: String
    var logo: UIImage
    
    
    // Cells can have a highlighted Content Area and additional Content after it
    var contentHighlighted: String?
    var contentAdd: String?
    // Cells can contain a switch
    var doneSwitch: UISwitch?
    
}
