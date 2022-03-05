//
//  PerformanceTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 3/5/22.
//

import XCTest
@testable import NMASFSymbol

class PerformanceTests: XCTestCase {
    
    let symbolRawValues = SFSymbol.allCases.map { $0.rawValue }
    let symbolDisplayNames = SFSymbol.allCases.map { $0.displayName }
    
    let metrics: [XCTMetric] = [
        XCTCPUMetric(),
        XCTMemoryMetric()
        ]
        
    func testReplacePerformance() throws {
        
        var results = [String]()
        
        measure(metrics: metrics) {
            for name in symbolRawValues {
                let result = name.replacingOccurrences(of: ".", with: " ")
                results.append(result)
            }
        }
        
        assertResultsEqual(results)
    }
    
    func testComponentsJoindPerformance() throws {
        var results = [String]()
        measure(metrics: metrics) {
            for name in symbolRawValues {
                let result = name.components(separatedBy: ".").joined(separator: " ")
                results.append(result)
            }
            
        }
        assertResultsEqual(results)
    }
    
    func testMapJoinedPerformance() throws {
        var results = [String]()
        measure(metrics: metrics) {
            for name in symbolRawValues {
                let result = name.map { String($0 == "." ? " " : $0) }.joined()
                results.append(result)
            }
        }
        assertResultsEqual(results)
    }
    
    func testReducePerformance() throws {
        var results = [String]()
        measure(metrics: metrics) {
            for name in symbolRawValues {
                let result = name.reduce(String()) { current, next in
                    if next == "." {
                        return current + String(" ")
                    } else {
                        return current + String(next)
                    }
                }
                results.append(result)
            }
            
        }
        assertResultsEqual(results)
        
    }
    
    func testReduceIntoPerformance() throws {
        var results = [String]()
        
        measure(metrics: metrics) {
            
            for name in symbolRawValues {
                let result = name.reduce(into: String()) { result, next in
                    if next == "." {
                        result.append(" ")
                    } else {
                        result.append(next)
                    }
                }
                results.append(result)
            }
            
        }
        assertResultsEqual(results)
        
    }
    
    lazy var expectedResults = Set(symbolDisplayNames)
    
    private func assertResultsEqual(_ actualResults: [String]) {
        
        XCTAssertEqual(expectedResults, Set(actualResults))
        
    }

}
