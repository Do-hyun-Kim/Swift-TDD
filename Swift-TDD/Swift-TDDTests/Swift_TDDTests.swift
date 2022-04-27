//
//  Swift_TDDTests.swift
//  Swift-TDDTests
//
//  Created by Kim dohyun on 2022/04/27.
//

import XCTest
@testable import Swift_TDD

class Swift_TDDTests: XCTestCase {

    var testViewModel: ViewModel?
    var userModel: User?
    
    override func setUpWithError() throws {
        userModel = User(email: "dohyu2314@naver.com", password: "123415")
        testViewModel = ViewModel(userEntities: userModel!)
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        userModel = nil
        testViewModel = nil
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        XCTAssertNotNil(testViewModel?.isEmailVaild(_:), "isEmailValid Error")
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
