//
//  SFSymbolCollectionTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/10/22.
//

import XCTest
@testable import NMASFSymbol

class SFSymbolCollectionTests: XCTestCase {
    
    var sfSymbolCollection: SFSymbolCollection!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sfSymbolCollection = TestSFSymbolCollection()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
        sfSymbolCollection = nil
    }

    func testInitValues() throws {
        // test empty
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    

}


class TestSFSymbolCollection: SFSymbolCollection {
    
    override static var defaultTitle = "Test Collection"
    
    init() {
        super.init(title: "Test Collection", symbols: [])
    }
        
    init(symbols: [SFSymbol] = []) {
        super.init(title: "Test Collection", symbols: symbols)
    }
    
    init(count: UInt = 10) {
        let symbols = (0..<count).map { _ in SFSymbol.allCases.randomElement()! }
        super.init(title: "Test Collection", symbols: symbols)
    }

    init(symbols: [SFSymbol] = [], infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) {
        super.init(title: "Test Collection", symbols: symbols, infoSymbol: infoSymbol, includeInfoInCollection: includeInfoInCollection)
    }
    
    init(count: UInt = 10, infoSymbol: SFSymbol, includeInfoInCollection: Bool = true) {
        let symbols = (0..<count).map { _ in SFSymbol.allCases.randomElement()! }
        super.init(title: "Test Collection", symbols: symbols, infoSymbol: infoSymbol, includeInfoInCollection: includeInfoInCollection)
    }

}
