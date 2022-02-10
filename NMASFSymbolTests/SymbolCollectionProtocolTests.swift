//
//  SymbolCollectionProtocolTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/10/22.
//

import XCTest
@testable import NMASFSymbol

class SymbolCollectionProtocolTests: XCTestCase {
    
    var symbolCollectionProtcolUT: SymbolCollectionProtocol!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        
        symbolCollectionProtcolUT = nil
    }

    func testSymbolCollection_NotInternalSetHolderFails() throws {
        let expectedSymbols: [SFSymbol] = [.beats_fit_pro, .beats_fit_pro_left, .beats_fit_pro_right, .house_fill, .house_circle, .house_circle_fill, .gamecontroller]
        
        symbolCollectionProtcolUT = TestSymbolCollection_NotInternalSetHolder_DoesNotHandleConformance()
        
        XCTAssertEqual(symbolCollectionProtcolUT.title, "Test Protocol")
        XCTAssertEqual(symbolCollectionProtcolUT.infoSymbol, .case)
        XCTAssertEqual(Set(symbolCollectionProtcolUT.symbols()), Set(expectedSymbols))
        // After this, an assertFailure should be produuced because
        // `TestSymbolCollection_NotInternalSetHolder` is not an InternalSetHolder
        // and does not manuually handle conformance SymbolCollectionProtocol Conformance
        // CONFIRMED
        
    }
    
    func testSymbolCollection_NotInternalSetHolder_Passes() throws {
        let expectedSymbols: [SFSymbol] = [.beats_fit_pro, .beats_fit_pro_left, .beats_fit_pro_right, .house_fill, .house_circle, .house_circle_fill, .gamecontroller]
        let expectedSymbolsPart = expectedSymbols[..<2]
        let notIncludedSymbols: [SFSymbol] = [.helm, .heart, .hare]
        
        symbolCollectionProtcolUT = TestSymbolCollection_NotInternalSetHolder_HandlesConformance() as! TestSymbolCollection_NotInternalSetHolder_HandlesConformance
        
        var handles: TestSymbolCollection_NotInternalSetHolder_HandlesConformance { symbolCollectionProtcolUT as! TestSymbolCollection_NotInternalSetHolder_HandlesConformance }
        
        XCTAssertEqual(handles.title, "Test Protocol")
        XCTAssertEqual(handles.infoSymbol, .case)
        XCTAssertEqual(Set(handles.symbols()), Set(expectedSymbols))


        XCTAssertFalse(handles.isEmpty)
        XCTAssertEqual(handles.count, 7)

        XCTAssertTrue(handles.contains(expectedSymbols[0]))
        XCTAssertFalse(handles.contains(notIncludedSymbols[0]))

        XCTAssertTrue(handles.contains(allOf: expectedSymbols))
        XCTAssertTrue(handles.contains(allOf: expectedSymbolsPart))
        XCTAssertFalse(handles.contains(allOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(handles.contains(allOf: notIncludedSymbols))

        XCTAssertTrue(handles.contains(anyOf: expectedSymbols))
        XCTAssertTrue(handles.contains(anyOf: expectedSymbolsPart))
        XCTAssertTrue(handles.contains(anyOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(handles.contains(anyOf: notIncludedSymbols))


        XCTAssertFalse(handles.contains(noneOf: expectedSymbols))
        XCTAssertFalse(handles.contains(noneOf: expectedSymbolsPart))
        XCTAssertFalse(handles.contains(noneOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertTrue(handles.contains(noneOf: notIncludedSymbols))

    }
    
    
    func testSymbolCollection_InternalSetHolder() throws {
        let expectedSymbols: [SFSymbol] = [.beats_fit_pro, .beats_fit_pro_left, .beats_fit_pro_right, .house_fill, .house_circle, .house_circle_fill, .gamecontroller]
        let expectedSymbolsPart = expectedSymbols[..<2]
        let notIncludedSymbols: [SFSymbol] = [.helm, .heart, .hare]
        

        
        symbolCollectionProtcolUT = TestSymbolCollection_InternalSetHolder()
        
        XCTAssertEqual(symbolCollectionProtcolUT.title, "Test Protocol")
        XCTAssertEqual(symbolCollectionProtcolUT.infoSymbol, .case)
        XCTAssertEqual(Set(symbolCollectionProtcolUT.symbols()), Set(expectedSymbols))
        
        
        XCTAssertFalse(symbolCollectionProtcolUT.isEmpty)
        XCTAssertEqual(symbolCollectionProtcolUT.count, 7)
        
        XCTAssertTrue(symbolCollectionProtcolUT.contains(expectedSymbols[0]))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(notIncludedSymbols[0]))
        
        XCTAssertTrue(symbolCollectionProtcolUT.contains(allOf: expectedSymbols))
        XCTAssertTrue(symbolCollectionProtcolUT.contains(allOf: expectedSymbolsPart))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(allOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(allOf: notIncludedSymbols))
        
        XCTAssertTrue(symbolCollectionProtcolUT.contains(anyOf: expectedSymbols))
        XCTAssertTrue(symbolCollectionProtcolUT.contains(anyOf: expectedSymbolsPart))
        XCTAssertTrue(symbolCollectionProtcolUT.contains(anyOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(anyOf: notIncludedSymbols))
        
        
        XCTAssertFalse(symbolCollectionProtcolUT.contains(noneOf: expectedSymbols))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(noneOf: expectedSymbolsPart))
        XCTAssertFalse(symbolCollectionProtcolUT.contains(noneOf: expectedSymbolsPart + notIncludedSymbols))
        XCTAssertTrue(symbolCollectionProtcolUT.contains(noneOf: notIncludedSymbols))

    }


}



class TestSymbolCollection_NotInternalSetHolder_DoesNotHandleConformance: SymbolCollectionProtocol {
    
    let _testSymbols: [SFSymbol] = [.beats_fit_pro, .beats_fit_pro_left, .beats_fit_pro_right, .house_fill, .house_circle, .house_circle_fill, .gamecontroller]
    
    var title: String
    
    var infoSymbol: SFSymbol
    
    init() {
        self.title = "Test Protocol"
        self.infoSymbol = .case
    }
    
    func symbols() -> [SFSymbol] {
        return _testSymbols
    }
    
}

class TestSymbolCollection_NotInternalSetHolder_HandlesConformance: TestSymbolCollection_NotInternalSetHolder_DoesNotHandleConformance {
    
    private lazy var symbolSet: Set<SFSymbol> = Set(symbols())
    
    public var count: Int { symbolSet.count }
    
    public var isEmpty: Bool { symbolSet.isEmpty }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolSet.contains(symbol)
    }
    
    public func contains<S: Sequence>(allOf symbols: S) -> Bool where S.Element == SFSymbol {
        return symbolSet.isSuperset(of: symbols)
    }
    
    public func contains<S: Sequence>(anyOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !symbolSet.isDisjoint(with: symbols)
    }
    
    public func contains<S: Sequence>(noneOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }

    
}



class TestSymbolCollection_InternalSetHolder: TestSymbolCollection_NotInternalSetHolder_DoesNotHandleConformance, InternalSymbolSetHolder {
    
    lazy var symbolSet: Set<SFSymbol> = Set(_testSymbols)
    
}

