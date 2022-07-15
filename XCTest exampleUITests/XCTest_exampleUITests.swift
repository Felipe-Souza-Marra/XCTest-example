//
//  XCTest_exampleUITests.swift
//  XCTest exampleUITests
//
//  Created by Felipe Souza Marra on 12/07/22.
//

import XCTest

class XCTest_exampleUITests: XCTestCase {

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        
    }
    
//    func testButtonsAplication() {
//        
//        let app = XCUIApplication()
//        app.launch()
//        
//        var buttons = 0
//        
//        buttons += app.buttons.count
//        
//        app.buttons["Button"].tap()
//        
//        buttons += app.buttons.count
//        
//        XCTAssertEqual(2, buttons)
//        
//    }
//    
//    func testTextFieldAplication() throws {
//        
//        let app = XCUIApplication()
//        app.launch()
//        
//        var textFields = 0
//        
//        textFields += app.textFields.count
//        
//        app.buttons["Button"].tap()
//        
//        textFields += app.textFields.count
//        
//        XCTAssertEqual(1, textFields)
//
//    }
//
//    func testLaunchPerformance() throws {
//        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
//            // This measures how long it takes to launch your application.
//            measure(metrics: [XCTApplicationLaunchMetric()]) {
//                XCUIApplication().launch()
//            }
//        }
//    }
}
