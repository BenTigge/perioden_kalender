//
//  CalendarViewHeader.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 22.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class CalendarHeaderView: UIStackView {
    
    let cmm = CalendarMonthModel()
    let monthLabel : UILabel = UILabel()
    let nextMonthButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    let previousMonthButton = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        self.axis = UILayoutConstraintAxis.horizontal
        self.distribution = UIStackViewDistribution.equalSpacing
        self.alignment = UIStackViewAlignment.center
        self.spacing = 5

        // sets calendar month at the top and centered
        monthLabel.text = cmm.currentMonthYearToString()
        monthLabel.textAlignment = .center
        monthLabel.font = UIFont.preferredFont(forTextStyle: .headline)
        
        // adds constraints to monthLabel
        monthLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        monthLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // sets next button
        nextMonthButton.setTitle(">", for: .normal)
        nextMonthButton.setTitleColor(UIColor.black, for: .normal)
        nextMonthButton.setTitleColor(UIColor.darkGray, for: .highlighted)
        nextMonthButton.addTarget(self, action: #selector(CalendarHeaderView.nextMonthButtonPressed(_:)), for: .touchUpInside)
        
        // sets previous button
        previousMonthButton.setTitle("<", for: .normal)
        previousMonthButton.setTitleColor(UIColor.black, for: .normal)
        previousMonthButton.setTitleColor(UIColor.darkGray, for: .highlighted)
        previousMonthButton.addTarget(self, action: #selector(CalendarHeaderView.previousMonthButtonPressed(_:)), for: .touchUpInside)
        
        // adds elements to View
        addArrangedSubview(previousMonthButton)
        addArrangedSubview(monthLabel)
        addArrangedSubview(nextMonthButton)

    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    // function called if nextMonthButton is pressed, increments month (and year, if last month of year)
    @objc func nextMonthButtonPressed(_ sender: UIButton!) {
        monthLabel.text = cmm.nextMonthToString()

    }
    
    // function called if previousMonthButton is pressed, decrements month (and year, if first month of year)
    @objc func previousMonthButtonPressed(_ sender: UIButton) {
        monthLabel.text = cmm.previousMonthToString()
    }

    
}
