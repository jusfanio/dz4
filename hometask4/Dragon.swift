//
//  Dragon.swift
//  hometask4
//
//  Created by Jusfan on 23/09/2017.
//  Copyright © 2017 Alesia. All rights reserved.
//

import UIKit

class Dragon: NSObject {
    
    //MARK: Public Properties
    
    let eyesColor: UIColor
    var tailLength: Double
    let hasFire: Bool
    var weight: Double
    let gender: Gender
    let growth: Double
    let name: String
    var speed: Double
    var action: String
    
     //MARK: Private Properties
    
    private var hungry: Bool
    
    //MARK: Initializer
    
    init(eyesColor: UIColor,
         tailLength: Double,
         hasFire: Bool,
         weight: Double,
         gender: Gender,
         growth: Double,
         name: String,
         speed: Double = 0.0,
         hungry: Bool = true,
         action: String = "Stay") {
        
        self.eyesColor = eyesColor
        self.tailLength = tailLength
        self.hasFire = hasFire
        self.weight = Double(weight)
        self.gender = gender
        self.growth = growth
        self.name = name
        self.speed = speed
        self.hungry = hungry
        self.action =  action
    }
    
    //MARK: Public Methods
    
    func fly(changeSpeed: Double) {
        speed += changeSpeed
        decreaseWeight()
        
        checkIfHungry(isHungry: true)
        action = "FLYING TO GYM"
    }
    
    func eat(food: Double) {
        let changes = Int(food / 10)
        
        for _ in 0..<changes {
            growthTail()
            increaseWeight()
        }
        
        checkIfHungry(isHungry: false)
        action = "EATING CAKES"
    }
    
    func isHungry() -> Bool {
        return hungry
    }
    
    //MARK: Private Methods
    
    private func decreaseWeight() {
        weight -= 2.0
    }
    
    private func growthTail() {
        tailLength += 0.1
    }
    
    private func increaseWeight() {
        weight += 5.0
    }
    
    private func checkIfHungry(isHungry: Bool) {
        hungry = isHungry
    }
}
