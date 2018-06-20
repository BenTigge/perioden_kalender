//
//  TabBarControllerViewController.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // create ViewControllers
        let forYouVC = ForYouViewController()
        let calendarVC = CalendarViewController()
        let settingsVC = SettingsViewController()
        
        //create TabBarItems for each VC
        forYouVC.tabBarItem = UITabBarItem(title: "Für Dich", image: nil, selectedImage: nil)
        calendarVC.tabBarItem = UITabBarItem(title: "Kalender", image: nil, selectedImage: nil)
        settingsVC.tabBarItem = UITabBarItem(title: "Optionen", image: nil, selectedImage: nil)
        
        
        let tabBarItems = [forYouVC, calendarVC, settingsVC]
        
        viewControllers = tabBarItems
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
