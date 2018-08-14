//
//  SettingsViewController.swift
//  myCalendar
//
//  Created by Benjamin Tiggemann on 20.06.18.
//  Copyright © 2018 Benjamin Tiggemann. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var themeTextField = UITextField(frame: CGRect(x: 200, y: 150, width: 150, height: 20))
    let themes = ["Klassisch", "Freundlich", "Dunkel"]
    var selectedTheme: String?
    
    func createThemePicker() {
        let themePicker = UIPickerView()
        themePicker.delegate = self
        themeTextField.inputView = themePicker
        themePicker.backgroundColor = .white
    }
    
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let doneButton = UIBarButtonItem(title: "Fertig", style: .plain, target: self, action: #selector(SettingsViewController.dismissPicker))
        
        toolbar.setItems([doneButton], animated: false)
        toolbar.isUserInteractionEnabled = true
        toolbar.backgroundColor = .gray
        toolbar.isTranslucent = true
        
        
        themeTextField.inputAccessoryView = toolbar
    }
    
    @objc func dismissPicker() {
        view.endEditing(true)
        changeTheme(selTheme: selectedTheme!)
    }
    
    func changeTheme(selTheme: String) {
        if selTheme == "Klassisch" {
            Theme.currentTheme = ClassicTheme()
        } else if selTheme == "Freundlich" {
            Theme.currentTheme = LightTheme()
        } else if selTheme == "Dunkel" {
            Theme.currentTheme = DarkTheme()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Optionen"
        
        // loads the pink fading background
        setBackgoundImage(vc: self)
        view.addSubview(themeTextField)
        themeTextField.placeholder = "Erscheinungsbild"
        createThemePicker()
        createToolbar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension SettingsViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return themes.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return themes[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        selectedTheme = themes[row]
        
    }
    
}
