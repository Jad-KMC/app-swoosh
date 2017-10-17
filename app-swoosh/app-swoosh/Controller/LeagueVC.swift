//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Nexion MacBook on 10/16/17.
//  Copyright © 2017 Nexion. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func onNextTapped(_ sender: Any) {
        // this is a programmatic segue
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
}
