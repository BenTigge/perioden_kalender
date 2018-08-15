//
//  createCells.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 15.08.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

// create some dummy cells with content
func createCells(_ cells: [CellContent]) -> [CellContent] {
    var cells2 = cells
    cells2.append(CellContent(content: "Deine Periode beginnt in voraussichtlich 5 Tagen", logo: nil, contentHighlighted: nil, contentAdd: nil, doneSwitch:  nil))
    cells2.append(CellContent(content: "Vergiss nicht, um 21 Uhr deine Pille zu nehmen", logo: nil, contentHighlighted: nil, contentAdd: nil, doneSwitch:  nil))
    cells2.append(CellContent(content: "Pille genommen", logo: nil, contentHighlighted: nil, contentAdd: nil, doneSwitch:  nil))
    
    cells2.append(CellContent(content: "Dein Schwangerschaftsrisiko ist heute gering", logo: nil, contentHighlighted: nil, contentAdd: nil, doneSwitch:  nil))
    
    cells2.append(CellContent(content: "Dein Eisprung kommt in 23 Tagen", logo: nil, contentHighlighted: nil, contentAdd: nil, doneSwitch:  nil))
    
    return cells2

}

