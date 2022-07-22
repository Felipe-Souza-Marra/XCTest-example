//
//  XCTest_exampleTests.swift
//  XCTest exampleTests
//
//  Created by Felipe Souza Marra on 12/07/22.
//

@testable import XCTest_example
import XCTest
import Foundation
import SwiftUI

class XCTest_exampleTests: XCTestCase {
    
    /// Quando um teste começar será rodado essa função.
    override func setUpWithError() throws {
        print("----> SetUp - Começando Teste")
    }
    
    /// Quando um teste estiver finalizando será rodado essa função.
    override func tearDownWithError() throws {
        print("----> TearDown - Finalizando Teste")
    }
    
    func testNumberNotExisting() throws {
        
        let validation: ValidationNumber = ValidationNumber()
        let expectedError = NumberValidationError.notNumber
        var error: NumberValidationError?
        
        XCTAssertThrowsError(try validation.greaterThan(nil, in: 200)) { thrownError in
            error = thrownError as? NumberValidationError
        }
        
        XCTAssertEqual(expectedError, error)
        
    }
    
    func testNumberGreaterThan() throws {
        
        let validation: ValidationNumber = ValidationNumber()
        
        XCTAssertTrue(try validation.greaterThan(110), NumberValidationError.notGreater.errorDescription!)
        
        XCTAssertThrowsError(try validation.greaterThan(200, in: 300), NumberValidationError.notGreater.errorDescription!)
        
        XCTAssertTrue(try validation.greaterThan(200, in: 190), NumberValidationError.notGreater.errorDescription!)
        
    }
    
    func testNumberLessThan() throws {
        
        let validation: ValidationNumber = ValidationNumber()
        
        XCTAssertTrue(try validation.lessThan(90), NumberValidationError.notGreater.errorDescription!)
        
        XCTAssertThrowsError(try validation.lessThan(200, in: 190), NumberValidationError.notGreater.errorDescription!)
        
        XCTAssertTrue(try validation.lessThan(200, in: 250), NumberValidationError.notGreater.errorDescription!)
        
    }
    
    func testAsync() async {
        
        let logic = ValidationNumber()
        
        let task = Task { () -> [Int?] in
            
            async let number1: Int? = logic.waitNumber(number: 3, seconds: 1)
            async let number2: Int? = logic.waitNumber(number: 4, seconds: 2.5)
            async let number3: Int? = logic.waitNumber(number: 5, seconds: 6)
            
            return await [ try? number1, try? number2, try? number3]
            
        }
        
        print("Dormindo")
        
        try? await Task.sleep(seconds: 5)
        
        print("Acorda")
        
        task.cancel()
        
        let numbers = await task.value
        
        XCTAssertEqual(numbers[0], 3)
        XCTAssertEqual(numbers[1], 4)
        XCTAssertNil(numbers[2])
        
        print("Números que chegaram: \n \(numbers)")
        
    }
    
    func testAsync2() {
        
//        XCTNSPredicateExpectation(predicate: <#T##NSPredicate#>, object: <#T##Any?#>)
//        XCTestExpectation()
//        XCTNSNotificationExpectation(name: <#T##NSNotification.Name#>)
//        XCTKVOExpectation(keyPath: <#T##String#>, object: <#T##Any#>)
            
        let expectation = XCTestExpectation(description: "Um teste")
        
        expectation.fulfill()
        
        let waiter = XCTWaiter(delegate: self)
        
        waiter.wait(for: [expectation], timeout: 10)
        
    }
    
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
