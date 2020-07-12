//
//  LeagueVC.swift
//  SwooshApp
//
//  Created by Ezequiel Parada Beltran on 12/07/2020.
//  Copyright © 2020 Ezequiel Parada. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: BorderButton!
    
    var player: Player!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        
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
    
}
