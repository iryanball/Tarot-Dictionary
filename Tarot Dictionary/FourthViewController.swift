//
//  FourthViewController.swift
//  Tarot Dictionary
//
//  Created by Ryan Ball on 13/12/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

var selectedTarotArray = [Tarot]()

class FourthViewController: UIViewController {
    
    @IBOutlet weak var allowReversedTarotSwitch: UISwitch!
    @IBOutlet weak var allowDuplicateTarotSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reversedTarotChanged(_ sender: Any) {
        
        if allowReversedTarotSwitch.isOn == true {
            
            selectedTarotArray = cardsArrayIncReversed
            
        } else {
            selectedTarotArray = cardsArray
        }
        
    }
    
    @IBAction func duplicateTarotChanged(_ sender: Any) {
        
        if allowDuplicateTarotSwitch.isOn == true {
            
            
            
        } else {
            
            
            
        }
        
    }
    
}

