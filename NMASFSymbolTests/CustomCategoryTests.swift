//
//  CustomCategoryTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/1/22.
//

import XCTest
@testable import NMASFSymbol

class CustomCategoryTests: XCTestCase {


    func testCustomCategoryCache() throws {
        
        let customCategory = makeCustomCategory()
    
        XCTAssertFalse(SFSymbol.Category.allCases.contains(.custom(customCategory)))
        
        customCategory.cache()
        
        XCTAssertTrue(SFSymbol.Category.allCases.contains(.custom(customCategory)))
        
        customCategory.removeFromCache()
                
        XCTAssertFalse(SFSymbol.Category.allCases.contains(.custom(customCategory)))
        
    }
    
    

    func testAddRemoveNewSymbols() throws {
        let customCategory = makeCustomCategory()
        
        // Confirm no hammer
        XCTAssertFalse(customCategory.contains(.hammer))
        
        // Confirm hammer added result == true
        XCTAssert(customCategory.add(.hammer))
        
        // Confirm confirm hammer was added
        XCTAssert(customCategory.contains(.hammer))
        
        // Confirm hammer removed result
        XCTAssertNotNil(customCategory.remove(.hammer))
        
        // Confirm hammer was removed
        XCTAssertFalse(customCategory.contains(.hammer))

    }
    
    
    func testAddRemoveExisitingSymbols() throws {
        let customCategory = makeCustomCategory()

        // Confirm hammer_circle_fill is present
        XCTAssert(customCategory.contains(.hammer_circle_fill))

        // Confirm hammer added result == false
        XCTAssertFalse(customCategory.add(.hammer_circle_fill))
        
        // Confirm hammer is still present
        XCTAssert(customCategory.contains(.hammer_circle_fill))
        
    }
    
    private func makeCustomCategory() -> SFSymbol.CustomCategory {
        
        let symbols = SFSymbol.allCases.filter { $0.rawString.contains("circle") && $0.rawString.contains("fill") }
        
        let customCategory = SFSymbol.CustomCategory(displayName: "Circle Filled", defaultSymbol: .hammer_circle_fill, symbols: symbols)
        
        return customCategory
        
    }

}


