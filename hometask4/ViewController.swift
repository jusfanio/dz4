//
//  ViewController.swift
//  hometask4
//
//  Created by Alesia Mjau on 08/09/2017.
//  Copyright © 2017 Alesia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let firstDragon = Dragon(eyesColor: .green, tailLength: 5, hasFire: true, weight: 170, gender: Gender.male, growth: 7.0, name: "Balerion")
    
    @IBOutlet weak var hungryLabel: UILabel!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var tailLengthLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstDragon.fly(changeSpeed: 20.0)
        print(firstDragon.speed)
        
        firstDragon.eat(food: 10)
        
        changeUI()
    }
    
    func changeUI() {
        hungryLabel.text = "\(firstDragon.isHungry())"
        
        actionLabel.text = "\(firstDragon.action)"
        
        weightLabel.text = "\(firstDragon.weight)"
        
        tailLengthLabel.text = "\(firstDragon.tailLength)"
    }

    
    @IBAction func eatAction(_ sender: UIButton) {
        firstDragon.eat(food: 15)
        changeUI()
    }
    @IBAction func flyAction(_ sender: UIButton) {
        firstDragon.fly(changeSpeed: 10)
        changeUI()
    }
}




