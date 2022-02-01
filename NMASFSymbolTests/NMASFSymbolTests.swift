//
//  NMASFSymbolTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/1/22.
//

import XCTest
import UIKit
@testable import NMASFSymbol

class NMASFSymbolTests: XCTestCase {
    
    func testSFSymbolInits() throws {
        for sfSymbol in SFSymbol.allCases {
            let rawValue = sfSymbol.rawValue
            XCTAssertNotNil(SFSymbol(rawValue: rawValue))
        }
    }
    
    func testSFSymbolsHaveUIImages() throws {
        for sfSymbol in SFSymbol.allCases {
            XCTAssertNotNil(sfSymbol.uiImage)
        }
    }
    
    private func assertInits(_ sfSymbol: SFSymbol) {
        XCTAssertNotNil(SFSymbol(rawValue: sfSymbol.rawValue))
        XCTAssertNotNil(SFSymbol(name: sfSymbol.rawString))
    }

}
