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
        XCTAssertEqual(collectionUT.symbols()[0], expectedInfoSymbol)

        // Confirm passing infoSymbol does not add `defaultInfoSymbol` to symbols
        // and passed infoSymbol is in collection by explicitly passing true
        collectionUT = TestSFSymbolCollection(symbols: [], infoSymbol: expectedInfoSymbol, includeInfoInCollection: true)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 1)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
        XCTAssertEqual(collectionUT.symbols()[0], expectedInfoSymbol)

        // Confirm passing infoSymbol does not add `defaultInfoSymbol` to symbols
        // and passed infoSymbol is not in collection by explicitly passing false
        collectionUT = TestSFSymbolCollection(symbols: [], infoSymbol: expectedInfoSymbol, includeInfoInCollection: false)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertTrue(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, 0)
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
        XCTAssertNil(collectionUT.symbols().first)


        // Confirm passing infoSymbol symbols that does not include passed infoSymbol
        // DOES add passed infoSymbol to collection and DOES NOT add `defaultInfoSymbol`
        // by default
        let passedSymbols: [SFSymbol] = [.timelapse, .cursorarrow_rays, .cursorarrow, .cursorarrow_square, .cursorarrow_and_square_on_square_dashed, .cursorarrow_click]
        XCTAssertFalse(passedSymbols.contains(expectedInfoSymbol))

        let expectedSymbols: [SFSymbol] = passedSymbols + [expectedInfoSymbol]
        XCTAssertEqual(expectedSymbols.count, passedSymbols.count + 1)
        XCTAssertNotEqual(passedSymbols, expectedSymbols)
        XCTAssertTrue(expectedSymbols.contains(expectedInfoSymbol))

        collectionUT = TestSFSymbolCollection(symbols: passedSymbols, infoSymbol: expectedInfoSymbol)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, expectedSymbols.count)
        XCTAssertTrue(collectionUT.contains(expectedInfoSymbol))
        XCTAssertEqual(Set(collectionUT.symbols()), Set(expectedSymbols))
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))

        // Confirm passing infoSymbol symbols that does not include passed infoSymbol
        // DOES NOT add passed infoSymbol to collection and DOES NOT add `defaultInfoSymbol`
        // by explicitly passing false
        collectionUT = TestSFSymbolCollection(symbols: passedSymbols, infoSymbol: expectedInfoSymbol, includeInfoInCollection: false)

        XCTAssertEqual(collectionUT.infoSymbol, expectedInfoSymbol)
        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, passedSymbols.count)
        XCTAssertFalse(collectionUT.contains(expectedInfoSymbol))
        XCTAssertEqual(Set(collectionUT.symbols()), Set(passedSymbols))
        XCTAssertFalse(collectionUT.contains(TestSFSymbolCollection.defaultInfoSymbol))
    }

    func testAdd() {
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
        XCTAssertEqual(Set(collectionUT.symbols()), Set([symbol0]))

        let addedSymbols0 = [symbol1, symbol2, symbol3, symbol4, symbol5]
        let expectedSymbols0 = addedSymbols0 + [symbol0]
        collectionUT.add(addedSymbols0)

        XCTAssertFalse(collectionUT.isEmpty)
        XCTAssertEqual(collectionUT.count, expectedSymbols0.count)
        XCTAssertTrue(collectionUT.contains(symbol0))
        XCTAssertTrue(collectionUT.contains(allOf: expectedSymbols0))
        XCTAssertTrue(collectionUT.contains(anyOf: expectedSymbols0))
        XCTAssertFalse(collectionUT.contains(noneOf: expectedSymbols0))
        XCTAssertEqual(Set(collectionUT.symbols()), Set(expectedSymbols0))

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
        updateInfoSymbol(infoSymbol, includeNew: includeInfoInCollection, removeOld: true)
    }

    init(count: UInt = 10, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) {
        let symbols = (0..<count).map { _ in SFSymbol.allCases.randomElement()! }
        super.init(title: Self.defaultTitle, symbols: symbols)
        updateInfoSymbol(infoSymbol, includeNew: includeInfoInCollection, removeOld: true)
    }

}
