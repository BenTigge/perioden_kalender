//
//  CalendarViewController.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class CalendarViewController: UIViewController {
    
    // loads header view
    let ch = CalendarHeaderView(frame: CGRect(x: 0, y: 0, width: width, height: 30))
    let cb = CalendarBodyView(frame: CGRect(x: 0, y: 0, width: width, height: 250))
    // let cbc = CalendarBodyViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // loads the pink fading background
        setBackgoundImage(vc: self)
        

        // creates vertical stackView for header and body
        let calendarStackView = UIStackView(frame: view.frame)
        calendarStackView.axis = UILayoutConstraintAxis.vertical
        calendarStackView.distribution = UIStackViewDistribution.equalSpacing
        calendarStackView.alignment = UIStackViewAlignment.center
        calendarStackView.spacing = 0
        
        // adds header and body to stackView
        calendarStackView.addArrangedSubview(ch)
        calendarStackView.addArrangedSubview(cb)
        // calendarStackView.addArrangedSubview(cbc)
        
        // adds stackview to view
        view.addSubview(calendarStackView)
        
        // adds constraints to header
        ch.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        if (height == 812) {
            ch.topAnchor.constraint(equalTo: view.topAnchor, constant: 74).isActive = true
        } else {
            ch.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        }
        
        // adds conatraints to body
        cb.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
        if (height == 812) {
            cb.topAnchor.constraint(equalTo: view.topAnchor, constant: 150).isActive = true
        } else {
            cb.topAnchor.constraint(equalTo: view.topAnchor, constant: 130).isActive = true
        }
        
        // enables constraints
        calendarStackView.translatesAutoresizingMaskIntoConstraints = false
        
        
     
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}
