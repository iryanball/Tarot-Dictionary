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
    
    let tarotCardArray = [UIImage(named: ("rwacecups.png"))!,UIImage(named: ("rw02cups.png"))!,UIImage(named: ("rw03cups.png"))!,UIImage(named: ("rw04cups.png"))!,UIImage(named: ("rw05cups.png"))!,UIImage(named: ("rw06cups.png"))!,UIImage(named: ("rw07cups.png"))!,UIImage(named: ("rw08cups.png"))!,UIImage(named: ("rw09cups.png"))!,UIImage(named: ("rw10cups.png"))!,UIImage(named: ("rwpagecups.png"))!,UIImage(named: ("rwknightcups.png"))!,UIImage(named: ("rwqueencups.png"))!,UIImage(named: ("rwkingcups.png"))!,UIImage(named: ("rwacepentacles.png"))!,UIImage(named: ("rw02pentacles.png"))!,UIImage(named: ("rw03pentacles.png"))!,UIImage(named: ("rw04pentacles.png"))!,UIImage(named: ("rw05pentacles.png"))!,UIImage(named: ("rw06pentacles.png"))!,UIImage(named: ("rw07pentacles.png"))!,UIImage(named: ("rw08pentacles.png"))!,UIImage(named: ("rw09pentacles.png"))!,UIImage(named: ("rw10cups.png"))!,UIImage(named: ("rwpagepentacles.png"))!,UIImage(named: ("rwknightpentacles.png"))!,UIImage(named: ("rwqueenpentacles.png"))!,UIImage(named: ("rwkingpentacles.png"))!,UIImage(named: ("rwaceswords.png"))!,UIImage(named: ("rw02swords.png"))!,UIImage(named: ("rw03swords.png"))!,UIImage(named: ("rw04swords.png"))!,UIImage(named: ("rw05swords.png"))!,UIImage(named: ("rw06swords.png"))!,UIImage(named: ("rw07swords.png"))!,UIImage(named: ("rw08swords.png"))!,UIImage(named: ("rw09swords.png"))!,UIImage(named: ("rw10swords.png"))!,UIImage(named: ("rwpageswords.png"))!,UIImage(named: ("rwknightswords.png"))!,UIImage(named: ("rwqueenswords.png"))!,UIImage(named: ("rwkingswords.png"))!,UIImage(named: ("rwacewands.png"))!,UIImage(named: ("rw02wands.png"))!,UIImage(named: ("rw03wands.png"))!,UIImage(named: ("rw04wands.png"))!,UIImage(named: ("rw05wands.png"))!,UIImage(named: ("rw06wands.png"))!,UIImage(named: ("rw07wands.png"))!,UIImage(named: ("rw08wands.png"))!,UIImage(named: ("rw09wands.png"))!,UIImage(named: ("rw10wands.png"))!,UIImage(named: ("rwpagewands.png"))!,UIImage(named: ("rwknightwands.png"))!,UIImage(named: ("rwqueenwands.png"))!,UIImage(named: ("rwkingwands.png"))!,UIImage(named: ("rwfool.png"))!,UIImage(named: ("rwmagician.png"))!,UIImage(named: ("rwhighpriestess.png"))!,UIImage(named: ("rwempress.png"))!,UIImage(named: ("rwemperor.png"))!,UIImage(named: ("rwhierophant.png"))!,UIImage(named: ("rwlovers.png"))!,UIImage(named: ("rwchariot.png"))!,UIImage(named: ("rwstrength.png"))!,UIImage(named: ("rwhermit.png"))!,UIImage(named: ("rwwheelfortune.png"))!,UIImage(named: ("rwjustice.png"))!,UIImage(named: ("rwhangedman.png"))!,UIImage(named: ("rwdeath.png"))!,UIImage(named: ("rwtemperance.png"))!,UIImage(named: ("rwdevil.png"))!,UIImage(named: ("rwtower.png"))!,UIImage(named: ("rwstar.png"))!,UIImage(named: ("rwmoon.png"))!,UIImage(named: ("rwsun.png"))!,UIImage(named: ("rwjudgement.png"))!,UIImage(named: ("rwworld.png"))!,UIImage(named: ("rwacecupsReversed.png"))!,UIImage(named: ("rw02cupsReversed.png"))!,UIImage(named: ("rw03cupsReversed.png"))!,UIImage(named: ("rw04cupsReversed.png"))!,UIImage(named: ("rw05cupsReversed.png"))!,UIImage(named: ("rw06cupsReversed.png"))!,UIImage(named: ("rw07cupsReversed.png"))!,UIImage(named: ("rw08cupsReversed.png"))!,UIImage(named: ("rw09cupsReversed.png"))!,UIImage(named: ("rw10cupsReversed.png"))!,UIImage(named: ("rwpagecupsReversed.png"))!,UIImage(named: ("rwknightcupsReversed.png"))!,UIImage(named: ("rwqueencupsReversed.png"))!,UIImage(named: ("rwkingcupsReversed.png"))!,UIImage(named: ("rwacepentaclesReversed.png"))!,UIImage(named: ("rw02pentaclesReversed.png"))!,UIImage(named: ("rw03pentaclesReversed.png"))!,UIImage(named: ("rw04pentaclesReversed.png"))!,UIImage(named: ("rw05pentaclesReversed.png"))!,UIImage(named: ("rw06pentaclesReversed.png"))!,UIImage(named: ("rw07pentaclesReversed.png"))!,UIImage(named: ("rw08pentaclesReversed.png"))!,UIImage(named: ("rw09pentaclesReversed.png"))!,UIImage(named: ("rw10cupsReversed.png"))!,UIImage(named: ("rwpagepentaclesReversed.png"))!,UIImage(named: ("rwknightpentaclesReversed.png"))!,UIImage(named: ("rwqueenpentacles.png"))!,UIImage(named: ("rwkingpentacles.png"))!,UIImage(named: ("rwaceswords.png"))!,UIImage(named: ("rw02swords.png"))!,UIImage(named: ("rw03swords.png"))!,UIImage(named: ("rw04swords.png"))!,UIImage(named: ("rw05swordsReversed.png"))!,UIImage(named: ("rw06swordsReversed.png"))!,UIImage(named: ("rw07swordsReversed.png"))!,UIImage(named: ("rw08swordsReversed.png"))!,UIImage(named: ("rw09swordsReversed.png"))!,UIImage(named: ("rw10swordsReversed.png"))!,UIImage(named: ("rwpageswordsReversed.png"))!,UIImage(named: ("rwknightswordsReversed.png"))!,UIImage(named: ("rwqueenswordsReversed.png"))!,UIImage(named: ("rwkingswordsReversed.png"))!,UIImage(named: ("rwacewandsReversed.png"))!,UIImage(named: ("rw02wandsReversed.png"))!,UIImage(named: ("rw03wandsReversed.png"))!,UIImage(named: ("rw04wandsReversed.png"))!,UIImage(named: ("rw05wandsReversed.png"))!,UIImage(named: ("rw06wandsReversed.png"))!,UIImage(named: ("rw07wandsReversed.png"))!,UIImage(named: ("rw08wandsReversed.png"))!,UIImage(named: ("rw09wandsReversed.png"))!,UIImage(named: ("rw10wandsReversed.png"))!,UIImage(named: ("rwpagewandsReversed.png"))!,UIImage(named: ("rwknightwandsReversed.png"))!,UIImage(named: ("rwqueenwandsReversed.png"))!,UIImage(named: ("rwkingwandsReversed.png"))!,UIImage(named: ("rwfoolReversed.png"))!,UIImage(named: ("rwmagicianReversed.png"))!,UIImage(named: ("rwhighpriestessReversed.png"))!,UIImage(named: ("rwempress.png"))!,UIImage(named: ("rwemperor.png"))!,UIImage(named: ("rwhierophant.png"))!,UIImage(named: ("rwlovers.png"))!,UIImage(named: ("rwchariot.png"))!,UIImage(named: ("rwstrength.png"))!,UIImage(named: ("rwhermitReversed.png"))!,UIImage(named: ("rwwheelfortuneReversed.png"))!,UIImage(named: ("rwjusticeReversed.png"))!,UIImage(named: ("rwhangedmanReversed.png"))!,UIImage(named: ("rwdeathReversed.png"))!,UIImage(named: ("rwtemperanceReversed.png"))!,UIImage(named: ("rwdevilReversed.png"))!,UIImage(named: ("rwtowerReversed.png"))!,UIImage(named: ("rwstarReversed.png"))!,UIImage(named: ("rwmoonReversed.png"))!,UIImage(named: ("rwsunReversed.png"))!,UIImage(named: ("rwjudgementReversed.png"))!,UIImage(named: ("rwworldReversed.png"))!] 

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
