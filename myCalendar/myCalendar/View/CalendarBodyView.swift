//
//  CalendarBodyView.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 23.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class CalendarBodyView: UIView {
    
    let label = UILabel()
    let label2 = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // empty in here
        label.text = "#Placeholder; not yet implemented"
        
        self.addSubview(label)
        self.addSubview(label2)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        label2.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        label.topAnchor.constraint(equalTo: self.topAnchor, constant: 74).isActive = true
        label2.topAnchor.constraint(equalTo: self.topAnchor, constant: 90).isActive = true
        
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
}
