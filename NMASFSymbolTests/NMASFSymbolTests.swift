//
//  NMASFSymbolTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 5/16/22.
//

import XCTest
@testable import NMASFSymbol
import SFSymbol
import SwiftUI
import UIKit

class NMASFSymbolTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testSFSymbolInit() throws {
        
        for symbol in SFSymbol.allCases {
            XCTAssertNotNil(symbol.image)
            XCTAssertNotNil(symbol.uiImage)
        }
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
