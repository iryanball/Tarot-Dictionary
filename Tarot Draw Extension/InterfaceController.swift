//
//  InterfaceController.swift
//  Tarot Draw Extension
//
//  Created by Ryan Ball on 05/07/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let tarotCardArray = [UIImage(named: ("rwacecups.png"))!,UIImage(named: ("rw02cups.png"))!,UIImage(named: ("rw03cups.png"))!,UIImage(named: ("rw04cups.png"))!,UIImage(named: ("rw05cups.png"))!,UIImage(named: ("rw06cups.png"))!,UIImage(named: ("rw07cups.png"))!,UIImage(named: ("rw08cups.png"))!,UIImage(named: ("rw09cups.png"))!,UIImage(named: ("rw10cups.png"))!,UIImage(named: ("rwpagecups.png"))!,UIImage(named: ("rwknightcups.png"))!,UIImage(named: ("rwqueencups.png"))!,UIImage(named: ("rwkingcups.png"))!,UIImage(named: ("rwacepentacles.png"))!,UIImage(named: ("rw02pentacles.png"))!,UIImage(named: ("rw03pentacles.png"))!,UIImage(named: ("rw04pentacles.png"))!,UIImage(named: ("rw05pentacles.png"))!,UIImage(named: ("rw06pentacles.png"))!,UIImage(named: ("rw07pentacles.png"))!,UIImage(named: ("rw08pentacles.png"))!,UIImage(named: ("rw09pentacles.png"))!,UIImage(named: ("rw10cups.png"))!,UIImage(named: ("rwpagepentacles.png"))!,UIImage(named: ("rwknightpentacles.png"))!,UIImage(named: ("rwqueenpentacles.png"))!,UIImage(named: ("rwkingpentacles.png"))!,UIImage(named: ("rwaceswords.png"))!,UIImage(named: ("rw02swords.png"))!,UIImage(named: ("rw03swords.png"))!,UIImage(named: ("rw04swords.png"))!,UIImage(named: ("rw05swords.png"))!,UIImage(named: ("rw06swords.png"))!,UIImage(named: ("rw07swords.png"))!,UIImage(named: ("rw08swords.png"))!,UIImage(named: ("rw09swords.png"))!,UIImage(named: ("rw10swords.png"))!,UIImage(named: ("rwpageswords.png"))!,UIImage(named: ("rwknightswords.png"))!,UIImage(named: ("rwqueenswords.png"))!,UIImage(named: ("rwkingswords.png"))!,UIImage(named: ("rwacewands.png"))!,UIImage(named: ("rw02wands.png"))!,UIImage(named: ("rw03wands.png"))!,UIImage(named: ("rw04wands.png"))!,UIImage(named: ("rw05wands.png"))!,UIImage(named: ("rw06wands.png"))!,UIImage(named: ("rw07wands.png"))!,UIImage(named: ("rw08wands.png"))!,UIImage(named: ("rw09wands.png"))!,UIImage(named: ("rw10wands.png"))!,UIImage(named: ("rwpagewands.png"))!,UIImage(named: ("rwknightwands.png"))!,UIImage(named: ("rwqueenwands.png"))!,UIImage(named: ("rwkingwands.png"))!,UIImage(named: ("rwfool.png"))!,UIImage(named: ("rwmagician.png"))!,UIImage(named: ("rwhighpriestess.png"))!,UIImage(named: ("rwempress.png"))!,UIImage(named: ("rwemperor.png"))!,UIImage(named: ("rwhierophant.png"))!,UIImage(named: ("rwlovers.png"))!,UIImage(named: ("rwchariot.png"))!,UIImage(named: ("rwstrength.png"))!,UIImage(named: ("rwhermit.png"))!,UIImage(named: ("rwwheelfortune.png"))!,UIImage(named: ("rwjustice.png"))!,UIImage(named: ("rwhangedman.png"))!,UIImage(named: ("rwdeath.png"))!,UIImage(named: ("rwtemperance.png"))!,UIImage(named: ("rwdevil.png"))!,UIImage(named: ("rwtower.png"))!,UIImage(named: ("rwstar.png"))!,UIImage(named: ("rwmoon.png"))!,UIImage(named: ("rwsun.png"))!,UIImage(named: ("rwjudgement.png"))!,UIImage(named: ("rwworld.png"))!] 

    @IBOutlet var tarotCardImage: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func drawTarotCard() {
        let randomTarotCard = tarotCardArray[Int(arc4random_uniform(UInt32(tarotCardArray.count)))]
        tarotCardImage.setImage(randomTarotCard)
        
    }
}
