//
//  SFSymbolTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/1/22.
//

import XCTest
import UIKit
import SwiftUI
import UIKit
@testable import NMASFSymbol

class SFSymbolTests: XCTestCase {
    
    func testSFSymbolInitName() throws {
        let systemName0 = "timelapse"
        let systemName1 = "cursorarrow.rays"
        let systemName2 = "cursorarrow"
        let systemName3 = "cursorarrow.square"
        let systemName4 = "cursorarrow.and.square.on.square.dashed"
        let systemName5 = "cursorarrow.click"
        
        XCTAssertNotNil(SFSymbol(name: systemName0))
        XCTAssertNotNil(SFSymbol(name: systemName1))
        XCTAssertNotNil(SFSymbol(name: systemName2))
        XCTAssertNotNil(SFSymbol(name: systemName3))
        XCTAssertNotNil(SFSymbol(name: systemName4))
        XCTAssertNotNil(SFSymbol(name: systemName5))
        
        let allSystemNames = SFSymbol.allCases.map { $0.systemName }
        for systemName in allSystemNames {
            XCTAssertNotNil(SFSymbol(name: systemName))
        }
        
        let notSystemName0 = "_timelapse"
        let notSystemName1 = "_cursorarrow.rays"
        let notSystemName2 = "_cursorarrow"
        let notSystemName3 = "_cursorarrow.square"
        let notSystemName4 = "_cursorarrow.and.square.on.square.dashed"
        let notSystemName5 = "_cursorarrow.click"

        XCTAssertNil(SFSymbol(name: notSystemName0))
        XCTAssertNil(SFSymbol(name: notSystemName1))
        XCTAssertNil(SFSymbol(name: notSystemName2))
        XCTAssertNil(SFSymbol(name: notSystemName3))
        XCTAssertNil(SFSymbol(name: notSystemName4))
        XCTAssertNil(SFSymbol(name: notSystemName5))
    }
    
    func testSFSymbol_AllCases_InitAndAttributes_NotNil() throws {
        let allSymbols = SFSymbol.allCases
        for symbol in allSymbols {
            assertAttributeValues(for: symbol)
        }
        
    }
    
    private func assertAttributeValues(for symbol: SFSymbol) {
        XCTAssertNotNil(symbol.uiImage)
        if symbol.uiImage == nil {
            print()
        }
        XCTAssertNotNil(symbol.image)
        
        if symbol.systemName.contains(".") {
            XCTAssertNotEqual(symbol.systemName, symbol.displayName, symbol.selfString)
        } else {
            XCTAssertEqual(symbol.systemName, symbol.displayName, symbol.selfString)
        }
    }
    
}
