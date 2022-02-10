//
//  SFSCollectionTests.swift
//  SFSymbolTests
//
//  Created by Monica Rondón on 2/1/22.
//

import XCTest
@testable import NMASFSymbol

typealias CacheResult = NMASFSymbol.NMACache<SFSCollection>.CacheResult
/*
class SFSCollectionTests: XCTestCase {
    
    func throwWrapper(_ f: () -> CacheResult) throws -> SFSCollection? {
        switch f() {
        case .success(let value):
            return value
        case .failure(let error):
            throw error
        }
        
    }


    func testSFSCollectionCache() throws {
        
        let sfsCollection = makeSFSCollection()

        // Confirm collection is not in cache
        XCTAssertFalse(SFSCollection.cache.contains(sfsCollection))

        // Confirm true is returned when collection is cached
        
        XCTAssertNoThrow(try throwWrapper(sfsCollection.cache))

        // Confirm collection is in cache after cache
        XCTAssert(SFSCollection.cache.contains(sfsCollection))

        // Confirm collection is in SFSymbol.Category.allCases after cache
//        XCTAssertTrue(SFSSystemCollection.allCases.contains(.custom(sfsCollection)))

        // Confirm re-cacheing returns false
        XCTAssertThrowsError(try throwWrapper(sfsCollection.cache))

        // Confirm only one item of sfsCollection is present after attempt to recache
//        XCTAssert(SFSCollection.filt cache.filter { $0 == sfsCollection }.count == 1)

        // Confirm removing sfsCollection returns true result
        XCTAssertNoThrow(try throwWrapper(sfsCollection.removeFromCache))

        // Confirm SFSCategoryCollection.allCases does not contain sfsCollection
//        XCTAssertFalse(SFSSystemCollection.allCases.contains(.custom(sfsCollection)))


        // Confirm collections not in cache
        let _ = SFSCollection(title: "Foo0", defaultSymbol: .message, symbols: (0...3).map { _ in SFSymbol.allCases.randomElement()! })
        let _ = SFSCollection(title: "Foo1", defaultSymbol: .message, symbols: (0...3).map { _ in SFSymbol.allCases.randomElement()! })
        let _ = SFSCollection(title: "Foo2", defaultSymbol: .message, symbols: (0...3).map { _ in SFSymbol.allCases.randomElement()! })
        let _ = SFSCollection(title: "Foo3", defaultSymbol: .message, symbols: (0...3).map { _ in SFSymbol.allCases.randomElement()! })

//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection0)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection1)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection2)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection3)))


        // Confirm adding collections to cache
//        XCTAssert(try collection0.cache())
//        XCTAssert(try collection1.cache())
//        XCTAssert(try collection2.cache())
//        XCTAssert(try collection3.cache())

        // Confirm collections in cache
//        XCTAssert(SFSCategoryCollection.allCases.contains(.custom(collection0)))
//        XCTAssert(SFSCategoryCollection.allCases.contains(.custom(collection1)))
//        XCTAssert(SFSCategoryCollection.allCases.contains(.custom(collection2)))
//        XCTAssert(SFSCategoryCollection.allCases.contains(.custom(collection3)))



        // Confirm collections not in cache after removeAll()
        SFSCollection.clearCache()

//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection0)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection1)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection2)))
//        XCTAssertFalse(SFSCategoryCollection.allCases.contains(.custom(collection3)))
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
        let sfCollection = SFSCollection(title: "Circle Filled", defaultSymbol: .hammer_circle_fill, symbols: symbols)
        return sfCollection
    }

}
*/
