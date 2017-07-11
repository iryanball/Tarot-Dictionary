//
//  ThirdViewController.swift
//  Tarot Dictionary
//
//  Created by Ryan Ball on 02/07/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var selectedTarot: Tarot!
    
    @IBOutlet weak var tarotNameLabel: UILabel!
    @IBOutlet weak var tarotImage: UIImageView!
    @IBOutlet weak var tarotDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        tarotNameLabel.text = selectedTarot.tarotName
        tarotImage.image = selectedTarot.tarotImage
        tarotDescriptionLabel.text = selectedTarot.tarotDescription
    }
}
