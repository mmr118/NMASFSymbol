//
//  SFSymbolCollectionTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/10/22.
//

import XCTest
@testable import NMASFSymbol

class SFSymbolCollectionTests: XCTestCase {
    
    var collectionUT: SFSymbolCollection!

    override func setUpWithError() throws {
        try super.setUpWithError()
        collectionUT = TestSFSymbolCollection()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        collectionUT = nil
    }

    func testInitValues() throws {
        // Confirm default init
        collectionUT = TestSFSymbolCollection()

        XCTAssertEqual(collectionUT.title, TestSFSymbolCollection.defaultTitle)
        XCTAssertEqual(collectionUT.infoSymbol, TestSFSymbolCollection.defaultInfoSymbol)
        XCTAssertTrue(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 0)


        // Confirm passed title is set on init
        let expectedTitle = "New Title"
        collectionUT = TestSFSymbolCollection(title: "New Title")
        XCTAssertEqual(collectionUT.title, expectedTitle)


        // Confirm passing infoSymbol does not add `defaultInfoSymbol` to symbols
        // and passed infoSymbol is in collection by default
        let expectedInfoSymbol = SFSymbol.allergens

        collectionUT = TestSFSymbolCollection(symbols: [], infoSymbol: expectedInfoSymbol)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 1)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
        XCTAssertEqual(collectionUT.symbols.first!, expectedInfoSymbol)

        // Confirm passing infoSymbol does not add `defaultInfoSymbol` to symbols
        // and passed infoSymbol is in collection by explicitly passing true
        collectionUT = TestSFSymbolCollection(symbols: [], infoSymbol: expectedInfoSymbol, includeInfoInCollection: true)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 1)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
        XCTAssertEqual(collectionUT.symbols.first!, expectedInfoSymbol)

        // Confirm passing infoSymbol does not add `defaultInfoSymbol` to symbols
        // and passed infoSymbol is not in collection by explicitly passing false
        collectionUT = TestSFSymbolCollection(symbols: [], infoSymbol: expectedInfoSymbol, includeInfoInCollection: false)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertTrue(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 0)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
        XCTAssertNil(collectionUT.symbols.first)


        // Confirm passing infoSymbol symbols that does not include passed infoSymbol
        // DOES add passed infoSymbol to collection and DOES NOT add `defaultInfoSymbol`
        // by default
        let passedSymbols = Set<SFSymbol>([.timelapse, .cursorarrow_rays, .cursorarrow, .cursorarrow_square, .cursorarrow_and_square_on_square_dashed, .cursorarrow_click])
        XCTAssertFalse(passedSymbols.contains(expectedInfoSymbol))

        let expectedSymbols = Set(passedSymbols + [expectedInfoSymbol])
        XCTAssertEqual(expectedSymbols.count, passedSymbols.count + 1)
        XCTAssertNotEqual(passedSymbols, expectedSymbols)
        XCTAssertTrue(expectedSymbols.contains(expectedInfoSymbol))

        collectionUT = TestSFSymbolCollection(symbols: passedSymbols, infoSymbol: expectedInfoSymbol)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, expectedSymbols.count)
        XCTAssertTrue(collectionUT.contains(expectedInfoSymbol))
        XCTAssertEqual(collectionUT.symbols, expectedSymbols)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))

        // Confirm passing infoSymbol symbols that does not include passed infoSymbol
        // DOES NOT add passed infoSymbol to collection and DOES NOT add `defaultInfoSymbol`
        // by explicitly passing false
        collectionUT = TestSFSymbolCollection(symbols: passedSymbols, infoSymbol: expectedInfoSymbol, includeInfoInCollection: false)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, passedSymbols.count)
        XCTAssertFalse(collectionUT.contains(expectedInfoSymbol))
        XCTAssertEqual(collectionUT.symbols, passedSymbols)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
    }

    func testAddRemoveSymbols() {
        let symbol0: SFSymbol =  .timelapse
        let symbol1: SFSymbol =  .cursorarrow_rays
        let symbol2: SFSymbol =  .cursorarrow
        let symbol3: SFSymbol =  .cursorarrow_square
        let symbol4: SFSymbol =  .cursorarrow_and_square_on_square_dashed
        let symbol5: SFSymbol =  .cursorarrow_click

        XCTAssertTrue(collectionUT.isEmpty)

        // Confirm symbol(s) added returns `true` and symbol(s) are in collection
        XCTAssertTrue(collectionUT.add(symbol0))
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 1)
        XCTAssertTrue(collectionUT.contains(symbol0))
        XCTAssertEqual(collectionUT.symbols, Set([symbol0]))

        let addedSymbols0 = Set([symbol1, symbol2, symbol3, symbol4, symbol5])
        let expectedSymbols0 = Set(addedSymbols0 + [symbol0])
        collectionUT.add(addedSymbols0)

        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, expectedSymbols0.count)
        XCTAssertTrue(collectionUT.contains(symbol0))
        XCTAssertTrue(collectionUT.contains(allOf: expectedSymbols0))
        XCTAssertTrue(collectionUT.contains(anyOf: expectedSymbols0))
        XCTAssertFalse(collectionUT.contains(noneOf: expectedSymbols0))
        XCTAssertEqual(collectionUT.symbols, expectedSymbols0)

        // Confirm removed symbol(s) are not in collection and contains methods
        let expectedSymbolToRemove = symbol0
        let actualSymbolRemoved = collectionUT.remove(symbol0)

        XCTAssertNotNil(actualSymbolRemoved)
        XCTAssertEqual(expectedSymbolToRemove, actualSymbolRemoved)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertFalse(collectionUT.contains(symbol0))
        XCTAssertFalse(collectionUT.contains(allOf: expectedSymbols0))
        XCTAssertTrue(collectionUT.contains(anyOf: expectedSymbols0))
        XCTAssertFalse(collectionUT.contains(noneOf: expectedSymbols0))

        let expectedSymbolsToRemove = [symbol5, symbol4]
        collectionUT.remove(expectedSymbolsToRemove)

        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertFalse(collectionUT.contains(symbol4))
        XCTAssertFalse(collectionUT.contains(symbol5))
        XCTAssertFalse(collectionUT.contains(allOf: expectedSymbolsToRemove))
        XCTAssertFalse(collectionUT.contains(anyOf: expectedSymbolsToRemove))
        XCTAssertTrue(collectionUT.contains(noneOf: expectedSymbolsToRemove))

    }

    
    func testSFSymbolAllAndCommonStaticFuncs() {
        
        // Confirm symbols from collections are combined properly
        let expectedCommonSymbols: [SFSymbol] = [.bag, .message, .key, .eye]
        let commonCollection0: SFSymbolCollection = TestSFSymbolCollection(symbols: expectedCommonSymbols + (1...5).map { _ in SFSymbol.allCases.randomElement()! })
        let commonCollection1: SFSymbolCollection = TestSFSymbolCollection(symbols: expectedCommonSymbols + (1...10).map { _ in SFSymbol.allCases.randomElement()! })
        let commonCollection2: SFSymbolCollection = TestSFSymbolCollection(symbols: expectedCommonSymbols + (1...3).map { _ in SFSymbol.allCases.randomElement()! })
        let commonCollection3: SFSymbolCollection = TestSFSymbolCollection(symbols: expectedCommonSymbols + (1...7).map { _ in SFSymbol.allCases.randomElement()! })
        
        let allCommonCollections = [commonCollection0, commonCollection1, commonCollection2, commonCollection3]
        
        let allSymbols = SFSymbol.allSymbols(from: allCommonCollections)
        XCTAssertTrue(allSymbols.isStrictSuperset(of: commonCollection0.symbols))
        XCTAssertTrue(allSymbols.isStrictSuperset(of: commonCollection1.symbols))
        XCTAssertTrue(allSymbols.isStrictSuperset(of: commonCollection2.symbols))
        XCTAssertTrue(allSymbols.isStrictSuperset(of: commonCollection3.symbols))
        
        let commonSymbols = SFSymbol.commonSymbols(in: allCommonCollections)
        XCTAssertEqual(commonSymbols, Set(expectedCommonSymbols))
        XCTAssertTrue(commonSymbols.isStrictSubset(of: commonCollection0.symbols))
        XCTAssertTrue(commonSymbols.isStrictSubset(of: commonCollection1.symbols))
        XCTAssertTrue(commonSymbols.isStrictSubset(of: commonCollection2.symbols))
        XCTAssertTrue(commonSymbols.isStrictSubset(of: commonCollection3.symbols))
        XCTAssertEqual(commonSymbols.intersection(commonCollection0.symbols), commonSymbols)
        XCTAssertEqual(commonSymbols.intersection(commonCollection1.symbols), commonSymbols)
        XCTAssertEqual(commonSymbols.intersection(commonCollection2.symbols), commonSymbols)
        XCTAssertEqual(commonSymbols.intersection(commonCollection3.symbols), commonSymbols)
        
    }
    
    func testAddRemoveCollections() {

        // Confirm collections(s) added returns `true` and symbol(s) are in collection
        let collection0: SFSymbolCollection = TestSFSymbolCollection(count: 10)
        let collection1: SFSymbolCollection = TestSFSymbolCollection(count: 5)
        let collection2: SFSymbolCollection = TestSFSymbolCollection(count: 3)
        let collection3: SFSymbolCollection = TestSFSymbolCollection(count: 3)
        let collection4: SFSymbolCollection = TestSFSymbolCollection(count: 3)
        let collection5: SFSymbolCollection = TestSFSymbolCollection(count: 3)
        
    
        XCTAssertTrue(collectionUT.isEmpty)

        XCTAssertEqual(collectionUT.mergeSymbols(from: collection0), collection0.symbols)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.symbols, collection0.symbols)
        XCTAssertEqual(collectionUT.count, collection0.count)
        XCTAssertTrue(collectionUT.contains(allOf: collection0.symbols))
        XCTAssertTrue(collectionUT.contains(anyOf: collection0.symbols))
        XCTAssertFalse(collectionUT.contains(noneOf: collection0.symbols))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection0))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection0))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection0))

        let addedCollections0 = [collection1, collection2, collection3, collection4, collection5]
        let expectedMergeSymbols0 = SFSymbol.allSymbols(from: addedCollections0) // + [collection0])
        let actualMergeSymbols0 = collectionUT.mergeSymbols(from: addedCollections0)

        XCTAssertEqual(expectedMergeSymbols0, actualMergeSymbols0)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(actualMergeSymbols0.count, expectedMergeSymbols0.count)
        XCTAssertTrue(collectionUT.contains(allOf: expectedMergeSymbols0))
        XCTAssertTrue(collectionUT.contains(anyOf: expectedMergeSymbols0))
        XCTAssertFalse(collectionUT.contains(noneOf: expectedMergeSymbols0))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection0))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection1))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection2))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection3))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection4))
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection5))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection0))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection1))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection2))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection3))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection4))
        XCTAssertTrue(collectionUT.contains(anySymbolsFrom: collection5))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection0))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection1))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection2))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection3))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection4))
        XCTAssertFalse(collectionUT.contains(noSymbolsFrom: collection5))

        XCTAssertEqual(collectionUT.symbols, expectedMergeSymbols0.union(collection0.symbols))

        // Confirm removed symbol(s) are not in collection and contains methods
        
        XCTAssertTrue(collectionUT.contains(allSymbolsFrom: collection0))
        let expectedCollectionToRemove = collection0
        let actualSymbolsRemoved0 = collectionUT.separateSymbols(from: collection0)

        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertNotNil(actualSymbolsRemoved0)
        XCTAssertEqual(expectedCollectionToRemove.symbols, actualSymbolsRemoved0)
        XCTAssertFalse(collectionUT.contains(allOf: expectedCollectionToRemove.symbols))
        XCTAssertFalse(collectionUT.contains(anyOf: expectedCollectionToRemove.symbols))
        XCTAssertTrue(collectionUT.contains(noneOf: expectedCollectionToRemove.symbols))
        XCTAssertFalse(collectionUT.contains(allSymbolsFrom: expectedCollectionToRemove))
        XCTAssertFalse(collectionUT.contains(anySymbolsFrom: expectedCollectionToRemove))
        XCTAssertTrue(collectionUT.contains(noSymbolsFrom: expectedCollectionToRemove))

        let expectedCollectionsToRemove = [collection5, collection4]
        let expectedSymbolsToRemove = SFSymbol.allSymbols(from: expectedCollectionsToRemove)
        let actualSymbolsRemoved1 = collectionUT.separateSymbols(from: expectedCollectionsToRemove)

        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertNotNil(actualSymbolsRemoved0)
        XCTAssertEqual(expectedSymbolsToRemove, actualSymbolsRemoved1)
        XCTAssertEqual(expectedSymbolsToRemove, actualSymbolsRemoved1)
        XCTAssertFalse(collectionUT.contains(allOf: expectedSymbolsToRemove))
        XCTAssertFalse(collectionUT.contains(anyOf: expectedSymbolsToRemove))
        XCTAssertTrue(collectionUT.contains(noneOf: expectedSymbolsToRemove))
        XCTAssertFalse(collectionUT.contains(allSymbolsFrom: collection4))
        XCTAssertFalse(collectionUT.contains(anySymbolsFrom: collection4))
        XCTAssertTrue(collectionUT.contains(noSymbolsFrom: collection4))
        XCTAssertFalse(collectionUT.contains(allSymbolsFrom: collection5))
        XCTAssertFalse(collectionUT.contains(anySymbolsFrom: collection5))
        XCTAssertTrue(collectionUT.contains(noSymbolsFrom: collection5))
    }
}


class TestSFSymbolCollection: SFSymbolCollection {

    static let defaultTitle = "Test Collection"

    override init(title: String? = nil) {
        super.init(title: title)
    }

    init() {
        super.init(title: Self.defaultTitle)
    }

    init<S>(symbols: S) where S: Sequence, S.Element == SFSymbol {
        super.init(title: Self.defaultTitle, symbols: symbols)
    }

    init(count: UInt = 10) {
        let symbols = (0..<count).map { _ in SFSymbol.allCases.randomElement()! }
        super.init(title: Self.defaultTitle, symbols: symbols)
    }

    init<S: Sequence>(symbols: S, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) where S.Element == SFSymbol {
        super.init(title: Self.defaultTitle, symbols: symbols)
        updateInfoSymbol(infoSymbol, includeNewInCollection: includeInfoInCollection, removeOldFromCollection: true)
    }

    init(count: UInt = 10, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) {
        let symbols = (0..<count).map { _ in SFSymbol.allCases.randomElement()! }
        super.init(title: Self.defaultTitle, symbols: symbols)
        updateInfoSymbol(infoSymbol, includeNewInCollection: includeInfoInCollection, removeOldFromCollection: true)
    }

}
