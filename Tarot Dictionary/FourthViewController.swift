//
//  FourthViewController.swift
//  Tarot Dictionary
//
//  Created by Ryan Ball on 13/12/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

var selectedTarotArray = cardsArrayIncReversed

class FourthViewController: UIViewController {
    
    @IBOutlet weak var allowReversedTarotCardLabel: UILabel!
    @IBOutlet weak var allowDuplicateTarotCardLabel: UILabel!
    @IBOutlet weak var nightModeLabel: UILabel!
    @IBOutlet weak var allowReversedTarotSwitch: UISwitch!
    @IBOutlet weak var allowDuplicateTarotSwitch: UISwitch!
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        nightModeSwitch.isOn = false
        
        if let revCards = defaults.value(forKey: "reversedCards") {
            allowReversedTarotSwitch.isOn = revCards as! Bool
        }
        
        if let dupCards = defaults.value(forKey: "duplicateCards") {
            allowDuplicateTarotSwitch.isOn = dupCards as! Bool
        }
        
        if let nMode = defaults.value(forKey: "nightMode") {
            nightModeSwitch.isOn = nMode as! Bool
        }
    
    }
    
    @IBAction func reversedTarotChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "reversedTarot")
        
        if allowReversedTarotSwitch.isOn == true {
            
            selectedTarotArray = cardsArrayIncReversed
            
        } else {
            selectedTarotArray = cardsArray
        }
        
    }
    
    @IBAction func duplicateTarotChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "duplicateCards")
        
        if allowDuplicateTarotSwitch.isOn == true {
            
            
            
        } else {
            
            
            
        }
        
    }
    
    @IBAction func nightModeChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "nightMode")
        
        if nightModeSwitch.isOn == true {
            
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]//user global variable
            self.navigationController?.navigationBar.barStyle = UIBarStyle.black //user global variable
            self.navigationController?.navigationBar.tintColor = UIColor.black //user global variable
            UIApplication.shared.statusBarStyle = .lightContent
            allowReversedTarotCardLabel.textColor = UIColor.white
            allowDuplicateTarotCardLabel.textColor = UIColor.white
            nightModeLabel.textColor = UIColor.white
            self.tabBarController?.tabBar.barTintColor = UIColor.black
            self.view.backgroundColor = UIColor.init(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
            
            
        } else {
            
            
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]//user global variable
            self.navigationController?.navigationBar.barStyle = UIBarStyle.default //user global variable
            self.navigationController?.navigationBar.tintColor = UIColor.white //user global variable
            UIApplication.shared.statusBarStyle = .default
            allowReversedTarotCardLabel.textColor = UIColor.black
            allowDuplicateTarotCardLabel.textColor = UIColor.black
            nightModeLabel.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            self.tabBarController?.tabBar.barTintColor = UIColor.white
            
        }
        
    }
}

