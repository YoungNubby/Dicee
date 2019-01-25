//
//  ViewController.swift
//  Dicee
//
//  Created by Garrett Gilley on 1/21/19.
//  Copyright © 2019 Garrett Gilley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let diceArray = ["dice1" , "dice2" , "dice3" , "dice4" , "dice5" , "dice6"]
    
//variables we are going to use for functions
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    
//Ui Image assets as outlet, allows them to change, see line 29
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
        
    }
    
    
//Ui Image asset as action, allows object to function as well as change
    @IBAction func rollButtonPresson(_ sender: UIButton) {
        updateDiceImages()
        
    }
    
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDiceImages()
        
        
    }
    
    
    
    func updateDiceImages() {
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        //what the above line says is, it is taking our randomDIceIndex1 variable, and reassigning it to a new whole number, aka an integer, that is random, from the number 0 to 5, when out button is pressed due to its location
        
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray [randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray [randomDiceIndex2])
        
        
        
        
        
    }
    
}

