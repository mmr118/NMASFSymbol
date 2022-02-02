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
        
        let sfsCollection = makeSFSCollection()
    
        XCTAssertFalse(SFSymbol.SystemCollection.allCases.contains(.custom(sfsCollection)))
        
        sfsCollection.cache()
        
        XCTAssertTrue(SFSymbol.SystemCollection.allCases.contains(.custom(sfsCollection)))
        
        sfsCollection.removeFromCache()
                
        XCTAssertFalse(SFSymbol.SystemCollection.allCases.contains(.custom(sfsCollection)))
        
    }
    
    

    func testAddRemoveNewSymbols() throws {
        
        let sfsCollection = makeSFSCollection()
        
        // Confirm no hammer
        XCTAssertFalse(sfsCollection.contains(.hammer))
        
        // Confirm hammer added result == true
        XCTAssert(sfsCollection.add(.hammer))
        
        // Confirm confirm hammer was added
        XCTAssert(sfsCollection.contains(.hammer))
        
        // Confirm hammer removed result
        XCTAssertNotNil(sfsCollection.remove(.hammer))
        
        // Confirm hammer was removed
        XCTAssertFalse(sfsCollection.contains(.hammer))

    }
    
    
    func testAddRemoveExisitingSymbols() throws {
        let sfsCollection = makeSFSCollection()

        // Confirm hammer_circle_fill is present
        XCTAssert(sfsCollection.contains(.hammer_circle_fill))

        // Confirm hammer added result == false
        XCTAssertFalse(sfsCollection.add(.hammer_circle_fill))
        
        // Confirm hammer is still present
        XCTAssert(sfsCollection.contains(.hammer_circle_fill))
        
    }
    
    private func makeSFSCollection() -> SFSCollection {
        
        let symbols = SFSymbol.allCases.filter { $0.rawString.contains("circle") && $0.rawString.contains("fill") }
        
        let customCategory = SFSCollection(displayName: "Circle Filled", defaultSymbol: .hammer_circle_fill, symbols: symbols)
        
        return customCategory
        
    }

}


