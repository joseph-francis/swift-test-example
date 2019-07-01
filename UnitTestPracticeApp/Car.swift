//
//  Car.swift
//  UnitTestPracticeApp
//
//  Created by Joseph on 7/1/19.
//  Copyright © 2019 Joseph. All rights reserved.
//

import Foundation

class Car {
    
    var miles = 0
    var type: CarType
    var transmissionMode: CarTransmissionMode
    
    func start(minutes: Int) {
        var speed = 0
        if self.type == .Economy && self.transmissionMode == .Drive {
            speed = 35
        }
        
        if self.type == .OffRoad && self.transmissionMode == .Drive {
            speed = 50
        }
        
        if self.type == .Sport && self.transmissionMode == .Drive {
            speed = 70
        }
        
        self.miles = speed * (minutes / 60)
    }
    
    init(type:CarType, transmissionMode:CarTransmissionMode) {
        self.type = type
        self.transmissionMode = transmissionMode
    }
    
}

enum CarType {
    case Economy
    case OffRoad
    case Sport
}
enum CarTransmissionMode {
    case Park
    case Reverse
    case Neutral
    case Drive
}
