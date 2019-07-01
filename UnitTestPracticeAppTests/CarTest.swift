//
//  UnitTestPracticeAppTests.swift
//  UnitTestPracticeAppTests
//
//  Created by Joseph on 6/30/19.
//  Copyright © 2019 Joseph. All rights reserved.
//

import XCTest
@testable import UnitTestPracticeApp

class CarTest: XCTestCase {

    var hondaAccord: Car!
    var jeep: Car!
    var ferrari: Car!
    
    override func setUp() {
        super.setUp()
        
        hondaAccord = Car(type: .Economy, transmissionMode: .Drive)
        jeep = Car(type: .OffRoad, transmissionMode: .Drive)
        ferrari = Car(type: .Sport, transmissionMode: .Drive)
    }
    
    override func tearDown() {
        super.tearDown()
        
        removeVariables()
    }
    
    func removeVariables() {
        hondaAccord = nil
        jeep = nil
        ferrari = nil
    }
    
    func testHondaAccordMiles() {
        
        let minutes = 60
        
        XCTAssert(hondaAccord.type == .Economy, "Honda Accord is not Economy")
        XCTAssert(hondaAccord.transmissionMode == .Drive, "Honda Accord's transmission mode is not drive")
        
        
        let speed = 35 * minutes/60
        print(speed, hondaAccord.miles)
        hondaAccord.start(minutes: minutes)
        
        XCTAssertEqual(hondaAccord.miles, speed)
    }
    
    func testFerarriFasterThanAccord() {
        
        let minutes = 120
        ferrari.start(minutes: minutes)
        hondaAccord.start(minutes: minutes)
        
        XCTAssertGreaterThan(ferrari.miles, hondaAccord.miles, "Ferarri's miles is not greater than honda accord's.")
    }
    
    func testSportFasterThanJeep() {
        
        let minutes = 60
        
        ferrari.start(minutes: minutes)
        jeep.start(minutes: minutes)
        
        XCTAssertTrue(ferrari.miles > jeep.miles)
        
    }
    
    
    

}
