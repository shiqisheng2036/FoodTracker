//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Shiqi Sheng on 3/29/18.
//  Copyright © 2018 Shiqi Sheng. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    //MARK: Meal class tests
    func testMealInitializationSucceeds (){
        let zeroRatingMeal = Meal.init(name: "zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let fiveStarMeal = Meal.init(name: "five", photo: nil, rating: 5)
        XCTAssertNotNil(fiveStarMeal)
    }
    
    func testMealInitializationFails (){
        let noName = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)
        
        let largeRatingMeal = Meal.init(name: "five", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let negRating = Meal.init(name: "five", photo: nil, rating: -2)
        XCTAssertNil(negRating)
    }
    
}
