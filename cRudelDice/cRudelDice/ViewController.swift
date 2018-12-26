//
//  ViewController.swift
//  cRudelDice
//
//  Created by Chris Rudel on 12/26/18.
//  Copyright © 2018 Chris Rudel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    @IBAction func btnRoll(_ sender: UIButton)
    {
        btnRollHelper()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btnRollHelper()
    }

    func btnRollHelper()
    {
        let rnd1 = rollDice()
        let rnd2 = rollDice()
        let rndDice1 : String = "d\(rnd1)"
        let rndDice2 : String = "d\(rnd2)"
        
        diceImage1.image = UIImage(named: rndDice1)
        diceImage2.image = UIImage(named: rndDice2)
    }
    
    func rollDice() -> Int
    {
        return Int.random(in: 1...6)
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?)
    {
        btnRollHelper()
    }
}

