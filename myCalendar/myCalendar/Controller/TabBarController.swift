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
        
        // list of the items stored in tabBar
        let tabBarItems = [forYouVC, calendarVC, settingsVC]
        
        //adds items to ViewControllers
        viewControllers = tabBarItems
        
        //sets style of tabBar to translucent
        self.tabBar.isTranslucent = true
        
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateTabBar()
        
    }
    
    func updateTabBar() {
        self.tabBar.backgroundColor = Theme.currentTheme.tabBarBackgroundColor
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
