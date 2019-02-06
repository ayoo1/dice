//
//  ViewController.swift
//  dice
//
//  Created by Ayo Olabode on 2019-02-05.
//  Copyright © 2019 Ayo Olabode. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4","dice5","dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    

    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        updateDiceimages()
            
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceimages()
// This segment changes Dice faces
    }
    func updateDiceimages () {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        print(randomDiceIndex1)
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceimages()
    }
}




// 

