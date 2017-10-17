//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Nexion MacBook on 10/16/17.
//  Copyright © 2017 Nexion. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player()
    }

    @IBOutlet weak var nextBtn: BorderButton!
    @IBAction func onNextTapped(_ sender: Any) {
        // this is a programmatic segue
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLeague(leagueType: "mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLeague(leagueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLeague(leagueType: "coed")
    }
    
    func selectLeague(leagueType: String) {
        player.desiredLeague = leagueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // checking the segue for the destination view controller. I created a variable "player" in both of the necessary view controllers. The if let statement is the same as Model model = new Model()
        if let skillVC = segue.destination as? SkillVCViewController {
            skillVC.player = player
        }
    }
}
