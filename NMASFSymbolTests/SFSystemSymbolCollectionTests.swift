//
//  SFSystemSymbolCollectionTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/10/22.
//

import XCTest
@testable import NMASFSymbol

class SFSystemSymbolCollectionTests: XCTestCase {
    
    var systemCollectionUT: SFSystemSymbolCollection!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        systemCollectionUT = nil
    }

    func testSFSystemSymbolCollection() throws {
        let systemCategories = SFSymbol.SystemCategory.allCases
        
        for category in systemCategories {
            systemCollectionUT = category.collection()
            assertOnSystemCollection(for: category)
            
        }
        
        let expectedCategory = SFSymbolSystemCategory.whats_new
        let expectedSymbols = SFSymbol.WhatsNew
        let expectedInfoSymbol = SFSymbol.sparkles
        let expectedSymbolsPart: [SFSymbol] = [.beats_fit_pro, .beats_fit_pro_left, .beats_fit_pro_right]
        let notIncludedSymbols: [SFSymbol] = [.house_fill, .house_circle, .house_circle_fill, .gamecontroller]
        
        systemCollectionUT = SFSystemSymbolCollection.whats_new
        
        XCTAssertEqual(systemCollectionUT.category, expectedCategory)
        XCTAssertEqual(systemCollectionUT.title, expectedCategory.title)
        XCTAssertEqual(systemCollectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertEqual(Set(systemCollectionUT.symbols), Set(expectedSymbols))
        XCTAssertTrue(systemCollectionUT.contains(expectedSymbols[0]))
        XCTAssertFalse(systemCollectionUT.contains(notIncludedSymbols[0]))
        
        XCTAssertTrue(systemCollectionUT.contains(allOf: expectedSymbolsPart))
        XCTAssertFalse(systemCollectionUT.contains(allOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(systemCollectionUT.contains(allOf: notIncludedSymbols))
        
        XCTAssertTrue(systemCollectionUT.contains(anyOf: expectedSymbolsPart))
        XCTAssertTrue(systemCollectionUT.contains(anyOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(systemCollectionUT.contains(anyOf: notIncludedSymbols))
        
        XCTAssertFalse(systemCollectionUT.contains(noneOf: expectedSymbolsPart))
        XCTAssertFalse(systemCollectionUT.contains(noneOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertTrue(systemCollectionUT.contains(noneOf: notIncludedSymbols))
    }
    
    private func assertOnSystemCollection(for category: SFSymbolSystemCategory) {
        XCTAssertNotNil(systemCollectionUT)
        XCTAssertEqual(systemCollectionUT.title, category.title)
    }
    
    
}
