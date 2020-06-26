//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Roman Tuzhilkin on 6/25/20.
//  Copyright © 2020 Roman Tuzhilkin. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    @IBOutlet weak var nextBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let skillVC = segue.destination as? SkillVC{
            skillVC.player = player
        }
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
            performSegue(withIdentifier: "skillVCSegue", sender: self)
        
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        
        selectedLeague(leagueType: "mens")
    }
    @IBAction func onWomensTapped(_ sender: Any) {
        
        selectedLeague(leagueType: "womens")
    }
    @IBAction func onCoedTapped(_ sender: Any) {
        
        selectedLeague(leagueType: "coed")
    }
    
    func selectedLeague( leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
}
