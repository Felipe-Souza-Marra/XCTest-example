//
//  XCTest_exampleTests.swift
//  XCTest exampleTests
//
//  Created by Felipe Souza Marra on 12/07/22.
//

@testable import XCTest_example
import XCTest
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

//    func testNumberNotExisting() throws {
//
//        let validation: ValidationNumber = ValidationNumber()
//        let expectedError = NumberValidationError.notNumber
//        var error: NumberValidationError?
//
//        XCTAssertThrowsError(try validation.greaterThan(nil, in: 200)) { thrownError in
//            error = thrownError as? NumberValidationError
//        }
//
//        XCTAssertEqual(expectedError, error)
//
//    }
//
//    func testNumberGreaterThan() throws {
//
//        let validation: ValidationNumber = ValidationNumber()
//
//        XCTAssertTrue(try validation.greaterThan(110), NumberValidationError.notGreater.errorDescription!)
//
//        XCTAssertThrowsError(try validation.greaterThan(200, in: 300), NumberValidationError.notGreater.errorDescription!)
//
//        XCTAssertTrue(try validation.greaterThan(200, in: 190), NumberValidationError.notGreater.errorDescription!)
//
//    }
//
//    func testNumberLessThan() throws {
//
//        let validation: ValidationNumber = ValidationNumber()
//
//        XCTAssertTrue(try validation.lessThan(90), NumberValidationError.notGreater.errorDescription!)
//
//        XCTAssertThrowsError(try validation.lessThan(200, in: 190), NumberValidationError.notGreater.errorDescription!)
//
//        XCTAssertTrue(try validation.lessThan(200, in: 250), NumberValidationError.notGreater.errorDescription!)
//
//    }
//
//    func testPerformanceExample() throws {
//        // This is an example of a performance test case.
//        measure {
//            // Put the code you want to measure the time of here.
//        }
//    }

}
