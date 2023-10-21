//
//  demoProject2Tests.swift
//  demoProject2Tests
//
//  Created by YOU on 10/20/23.
//

import XCTest
@testable import demoProject2
final class demoProject2Tests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        
        let util = Utility()
        
        XCTAssertEqual(util.largerNumbers(1, 1), 0)
        XCTAssertEqual(util.largerNumbers(2, 7), 7)
        XCTAssertEqual(util.largerNumbers(8, 3), 8)
     
    }
    
    
    func testLeapYear () {
        let util = Utility()
        XCTAssertEqual(true,  util.isLeapYear(2020))
        XCTAssertEqual(false, util.isLeapYear(1900))
        XCTAssertEqual(true,  util.isLeapYear(2400))
    }

    func testPibo() throws {
        
        let util = Utility()
        let exResults = [0,1,1,2,3,5]
        for (index, exp)in exResults.enumerated() {
            XCTAssertEqual(exp, util.pibo(index))
        }
    }
    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
