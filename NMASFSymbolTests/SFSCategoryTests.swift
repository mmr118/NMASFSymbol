//
//  SFSCategoryTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/1/22.
//

import XCTest
@testable import NMASFSymbol

class SFSCategoryTests: XCTestCase {


    func testCustomCategoryCache() throws {
        
        let sfSymbolCollection = makeSFSymbolCollection()
    
        XCTAssertFalse(SFSymbol.SystemCollection.allCases.contains(.custom(sfSymbolCollection)))
        
        sfSymbolCollection.cache()
        
        XCTAssertTrue(SFSymbol.SystemCollection.allCases.contains(.custom(sfSymbolCollection)))
        
        sfSymbolCollection.removeFromCache()
                
        XCTAssertFalse(SFSymbol.SystemCollection.allCases.contains(.custom(sfSymbolCollection)))
        
    }
    
    

    func testAddRemoveNewSymbols() throws {
        
        let sfSymbolCollection = makeSFSymbolCollection()
        
        // Confirm no hammer
        XCTAssertFalse(sfSymbolCollection.contains(.hammer))
        
        // Confirm hammer added result == true
        XCTAssert(sfSymbolCollection.add(.hammer))
        
        // Confirm confirm hammer was added
        XCTAssert(sfSymbolCollection.contains(.hammer))
        
        // Confirm hammer removed result
        XCTAssertNotNil(sfSymbolCollection.remove(.hammer))
        
        // Confirm hammer was removed
        XCTAssertFalse(sfSymbolCollection.contains(.hammer))

    }
    
    
    func testAddRemoveExisitingSymbols() throws {
        let sfSymbolCollection = makeSFSymbolCollection()

        // Confirm hammer_circle_fill is present
        XCTAssert(sfSymbolCollection.contains(.hammer_circle_fill))

        // Confirm hammer added result == false
        XCTAssertFalse(sfSymbolCollection.add(.hammer_circle_fill))
        
        // Confirm hammer is still present
        XCTAssert(sfSymbolCollection.contains(.hammer_circle_fill))
        
    }
    
    private func makeSFSymbolCollection() -> SFSymbolCollection {
        
        let symbols = SFSymbol.allCases.filter { $0.rawString.contains("circle") && $0.rawString.contains("fill") }
        
        let customCategory = SFSymbolCollection(displayName: "Circle Filled", defaultSymbol: .hammer_circle_fill, symbols: symbols)
        
        return customCategory
        
    }

}


