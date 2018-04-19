//
//  ViewController.swift
//  zarGame
//
//  Created by Kadir Kutluhan Alev on 18.04.2018.
//  Copyright © 2018 Kadir Kutluhan Alev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomBiSeyler1 :Int = 0
    var randomBiSeyler2 : Int = 0
    @IBOutlet weak var diceImageView1: UIImageView!
    
    @IBOutlet weak var  diceImageView2: UIImageView!
    
    let diceArray = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceFace()
    }

    @IBAction func rollButtonPress(_ sender: Any) {
        
        updateDiceFace()
        
    }
    func updateDiceFace(){
        randomBiSeyler1 = Int(arc4random_uniform(6))
        randomBiSeyler2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named: diceArray[randomBiSeyler1])
        diceImageView2.image = UIImage(named: diceArray[randomBiSeyler2])
    }
    
}

