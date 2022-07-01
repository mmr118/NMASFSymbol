import XCTest
import UIKit

@testable import NMASFSymbol

final class SFSymbolTests: XCTestCase {

    func test_all_symbols_found() throws {
        for symbol in SFSymbol.allCases {
            let uiImage = UIImage(systemName: symbol.systemName)
            XCTAssertNotNil(uiImage)
        }
    }

}
