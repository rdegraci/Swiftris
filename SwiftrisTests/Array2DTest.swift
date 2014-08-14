//
//  Array2DTest.swift
//  Swiftris
//
//  Created by Rodney Degracia on 8/13/14.
//  Copyright (c) 2014 Patrick Cleary. All rights reserved.
//

import UIKit
import XCTest

class Array2DTest: XCTestCase {

    var array: Array2D<Int?>?
    var array2: A!
    
    override func setUp() {
        super.setUp()
        array = Array2D<Int?>(columns: 10, rows: 10)        
        self.array2 = A(columns: 10, rows: 10)
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testSubscript() {
        self.array2[1,1] = 1
        
        if let b = self.array {
            b[3,3] = 3
        }

        XCTAssertTrue(self.array2[1,1] == 1)
        XCTAssert(self.array2[1, 1] == 1)
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }

}
