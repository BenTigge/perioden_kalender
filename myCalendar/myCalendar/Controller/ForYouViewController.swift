//
//  ForYouViewController.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class ForYouViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "Für Dich"
        
        // loads the pink fading background
        //view.backgroundColor = UIColor(patternImage: #imageLiteral(resourceName: "background_View"))
        let background = UIImageView(frame: CGRect(x: 0, y: 0, width: 2000, height: 800))
        background.image = #imageLiteral(resourceName: "background_View")
        view.addSubview(background)
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
