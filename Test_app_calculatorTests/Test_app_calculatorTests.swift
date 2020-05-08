//
//  Test_app_calculatorTests.swift
//  Test_app_calculatorTests
//
//  Created by Heltyr911 on 5/8/20.
//  Copyright © 2020 heltyr. All rights reserved.
//

import XCTest
@testable import Test_app_calculator

class Test_app_calculatorTests: XCTestCase {
    
    var calculatorViewModel: CalculatorViewModelType!

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    // XCTAssert to test model CalculatorViewModel
    func testResult_CalculatorViewModel() {
        calculatorViewModel = CalculatorViewModel()
        var a = "557"
        XCTAssertEqual(calculatorViewModel.getRoot(numberString: "16"), "Result: \n4.0", "Wrong result")
        XCTAssertEqual(calculatorViewModel.getFactorial(numberString: "4"), "Result: \n24.0", "Wrong result")
        XCTAssertEqual(calculatorViewModel.tenInDegree(numberString: "3"), "Result: \n1000.0", "Wrong result")
        XCTAssertEqual(calculatorViewModel.addPoint(numberString: "546"), "546.", "Wrong result")
        XCTAssertEqual(calculatorViewModel.addNumber(number: 554, numberString: "5"), "5554", "Wrong result")
        XCTAssertEqual(calculatorViewModel.delNumber(numberString: &a), "55", "Wrong result")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
