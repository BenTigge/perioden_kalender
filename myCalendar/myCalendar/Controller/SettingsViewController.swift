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
        if selectedTheme != nil {
            changeTheme(selTheme: selectedTheme!)
        }
    }
    
    
    // function to change the Theme based on the selection of Theme Picker
    func changeTheme(selTheme: String) {
        if selTheme == "Klassisch" {
            Theme.currentTheme = ClassicTheme()
            Theme.currentThemeEnum = .classic
            UserDefaults.standard.set("Classic", forKey: "CurrentTheme")
        } else if selTheme == "Freundlich" {
            Theme.currentTheme = LightTheme()
            Theme.currentThemeEnum = .light
            UserDefaults.standard.set("Light", forKey: "CurrentTheme")
        } else if selTheme == "Dunkel" {
            Theme.currentTheme = DarkTheme()
             Theme.currentThemeEnum = .dark
            UserDefaults.standard.set("Dark", forKey: "CurrentTheme")
        }
        
        // updates this view directly
        view.backgroundColor = Theme.currentTheme.backgroundColor
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Optionen"
        
        // textfield to choose the Theme
        view.addSubview(themeTextField)
        themeTextField.placeholder = "Erscheinungsbild"
        
        // init Theme picker
        createThemePicker()
        
        // init doneButton for Theme Picker
        createToolbar()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // loads and updates the background
        view.backgroundColor = Theme.currentTheme.backgroundColor
    }
    
}


// implements functions neccessary for ThemePicker
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
