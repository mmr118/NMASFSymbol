//
//  NMACacheTests.swift
//  NMASFSymbolTests
//
//  Created by Monica Rondón on 2/3/22.
//

import XCTest
@testable import NMASFSymbol


extension Error {
    
    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.localizedDescription == rhs.localizedDescription
    }
    
}

extension Result where Success: Equatable {
    static func ==(lhs: Self, rhs: Self) -> Bool {
        switch (lhs, rhs) {
        case (.success(let lhsValue), .success(let rhsValue)):
            return lhsValue == rhsValue
        case (.failure(let lhsValue), .failure(let rhsValue)):
            return lhsValue.localizedDescription == rhsValue.localizedDescription
        default:
            return false
        }
    }
}

enum TestResultError: Error {
    case err1
    case err2
    var localizedDescription: String {
        switch self {
        case .err1: return "Error 1"
        case .err2: return "Error 2"
        }
    }
}

typealias TestResult = Result<Int, TestResultError>
typealias TestResultReport = (Bool, [TestResult])

func NMAXCTAssertEqualResult<T, E>(_ expression1: @autoclosure () -> Result<T, E>, _ expression2: @autoclosure () -> Result<T, E>, _ message: @autoclosure () -> String = "", file: StaticString = #filePath, line: UInt = #line) where T: Equatable, E: Error {
    
    switch (expression1(), expression2()) {
        
    case (let .success(value1), let .success(value2)):
        XCTAssertEqual(value1, value2, message(), file: file, line: line)
        
    case (let .failure(value1), let .failure(value2)):
//        XCTAssertEqual(value1, value2)
        XCTAssertEqual(value1.localizedDescription, value2.localizedDescription, message(), file: file, line: line)
        
    case (let .success(sValue1), let .failure(fValue2)):
        let message = "expression1 produces: success(\"\(sValue1)\"), expression2 produces: .failure(\"\(fValue2)\")"
        XCTFail(message, file: file, line: line)
        
    case (.failure(let fValue1), let .success(sValue2)):
        let message = "expression1 produces: .failur(\"\(fValue1)\"), expression2 produces: .success(\"\(sValue2)\")"
        XCTFail(message, file: file, line: line)
    }
}

func NMAXCTAssertEqualResultsReport<T, E>(_ expression1: @autoclosure () -> (Bool, [Result<T, E>]), _ expression2: @autoclosure () -> (Bool, [Result<T, E>]), _ message: @autoclosure () -> String = "", file: StaticString = #filePath, line: UInt = #line) where T: Equatable, E: Error {
    let (boolValue1, results1) = expression1()
    let (boolValue2, results2) = expression2()
    
    XCTAssertEqual(boolValue1, boolValue2, message(), file: file, line: line)
    
    XCTAssertEqual(results1.count, results2.count, message(), file: file, line: line)
    
    for (index, value1) in results1.enumerated() {
        let value2 = results2[index]
        NMAXCTAssertEqualResult(value1, value2, message(), file: file, line: line)
    }
    
}

class NMACacheTests: XCTestCase {
    
    typealias CacheResult = NMACache<Int>.CacheResult
    typealias CacheResultsReport = NMACache<Int>.CacheResultsReport
    
    let cache = NMACache<Int>()
    
    override func setUp() {
        super.setUp()
        
    }
    
    func testAddRemoveClearOneOrMoreElements() throws {
        
        // Confirm empty caches
        XCTAssert(cache.isEmpty)
        
        // Confirm adding one value is successful
        let expectedResult1 = 15
        XCTAssertEqual(resultValue(cache.add(expectedResult1))!, expectedResult1)
        
        // Confirm caches are not empty
        XCTAssertFalse(cache.isEmpty)
        
        // Confirm caches count is 1
        XCTAssertEqual(cache.count, 1)
        
        // Confirm adding arr to cache insertsAll
        let expectedResult2 = [20, 6]
        XCTAssertTrue(cache.add(elems: expectedResult2).insertedAll)
        
        // Confirm all added elements are present
        XCTAssertTrue(cache.contains(expectedResult1))
        XCTAssertTrue(cache.contains(expectedResult2[0]))
        XCTAssertTrue(cache.contains(expectedResult2[1]))
        
        // Confirm adding exisiting elements returns false for insertedAll
        XCTAssertFalse(cache.add(elems: expectedResult2).insertedAll)
        
        // Confirm adding exisiting elements returns error
        let localResultError = cache.add(elems: expectedResult2).results
        XCTAssertNotNil(resultError(localResultError[0]))
        XCTAssertNotNil(resultError(localResultError[1]))
        
        // Confirm caches count is 3
        XCTAssertEqual(cache.count, 3)
        
        // Confirm dumping cache returns expected contents
        XCTAssertEqual(cache.dump(), [expectedResult1] + expectedResult2)
        
        // Confirm cache is empty after dump
        XCTAssert(cache.isEmpty)
        
        
        
    }
    
    
    func testDumpHandler() {
        
        XCTAssert(cache.isEmpty)
        
        // Confirm add yields same result and cache has value
        let expectedValue = 15
        let expectedResult = CacheResult.success(15)
        let actualResult: CacheResult = cache.add(15)
        NMAXCTAssertEqualResult(actualResult, expectedResult)
        XCTAssert(cache.contains(expectedValue))
        
        // Confirm dump handler is nil
        XCTAssertNil(cache.dumpHander)
        
        // Confirm add seq has expected ResultReport
        var expectedValues = [1,2,3,4,5,6,7]
        var expectedResults = expectedValues.map { CacheResult.success($0) }
        let expectedReport: CacheResultsReport = (true, expectedResults)
        NMAXCTAssertEqualResultsReport(cache.add(elems: expectedValues), expectedReport)
        
        // Confirm dumpHandler gets dumped values
        cache.dumpHander = { values in XCTAssertEqual(expectedValues, values) }
        cache.dump()
        XCTAssert(cache.isEmpty)
        
        // Confirm dump triggered when limit is reached
        let capcityLimit = 2
        cache.dumpCycle = .capacityLimit(count: capcityLimit)
        XCTAssertNotNil(cache.capcityLimit)
        XCTAssertEqual(cache.capcityLimit, capcityLimit)
        expectedValues = [15, 6]
        expectedResults = expectedValues.map { CacheResult.success($0) }
        cache.dumpHander = { values in XCTAssertEqual(expectedValues, values) }
        cache.add(15)
        cache.add(6)
        cache.add(9)
        XCTAssertEqual(cache.count, 1)
        
        // Confirm when limitChanges cache holds expected amount of values
        expectedValues.reverse()
        expectedValues = [2, 9] + expectedValues
        cache.dumpCycle = .never
        cache.dumpHander = { _ in XCTFail() }
        XCTAssertNil(cache.capcityLimit)
        cache.add(elems: expectedValues)
        XCTAssertEqual(cache.count, expectedValues.count)
        XCTAssertEqual(Set(cache.elements()), Set(expectedValues))
        
        // Confirm dumpHandler triggered during manual dump
        cache.dumpHander = { values in XCTAssertEqual(expectedValues, values) }
        cache.dump()
    }
    
    func testNMAXTCResultAssertion() {
        let addErr1 = NMACacheError.elementExisits("ADD 1")
        let addErr2 = NMACacheError.elementExisits("ADD 2")
        let rmErr1 = NMACacheError.elementDNE("DNE 1")
        let rmErr2 = NMACacheError.elementDNE("DNE 2")
        let lmtErr1 = NMACacheError.capacityLimitReached("LMT 1")
        let lmtErr2 = NMACacheError.capacityLimitReached("LMT 2")
        
        // These should pass
        NMAXCTAssertEqualResult(CacheResult.success(15), CacheResult.success(15))
        NMAXCTAssertEqualResult(CacheResult.failure(addErr1), CacheResult.failure(addErr1))
        NMAXCTAssertEqualResult(CacheResult.failure(rmErr1), CacheResult.failure(rmErr1))
        NMAXCTAssertEqualResult(CacheResult.failure(lmtErr1), CacheResult.failure(lmtErr1))
        
        // These should fail
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.success(15), CacheResult.success(10))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.success(15), CacheResult.failure(addErr1))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.success(15), CacheResult.failure(rmErr1))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.success(15), CacheResult.failure(lmtErr1))

        // FIXME: Tests should be failiing
//        XCTExpectFailure("Testing failure function")
//        NMAXCTAssertEqualResult(CacheResult.failure(addErr1), CacheResult.failure(addErr2))
//        XCTExpectFailure("Testing failure function")
//        NMAXCTAssertEqualResult(CacheResult.failure(rmErr1), CacheResult.failure(rmErr2))
//        XCTExpectFailure("Testing failure function")
//        NMAXCTAssertEqualResult(CacheResult.failure(lmtErr1), CacheResult.failure(lmtErr2))
        
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(addErr1), CacheResult.failure(lmtErr2))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(rmErr1), CacheResult.failure(addErr2))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(lmtErr1), CacheResult.failure(rmErr2))
        
        
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(addErr1), CacheResult.failure(rmErr2))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(rmErr1), CacheResult.failure(lmtErr2))
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(CacheResult.failure(lmtErr1), CacheResult.failure(addErr2))
        
        let successValues1 = [1, 2, 3].map { CacheResult.success($0) }
        let successValues2 = [10, 20, 30].map { CacheResult.success($0) }
        let reportTrue1 = (true, successValues1)
        let reportTrue2 = (true, successValues2)
        
        let failureValues1 = [addErr1, rmErr1, lmtErr1].map { CacheResult.failure($0) }
        let failureValues2 = [addErr2, rmErr2, lmtErr2].map { CacheResult.failure($0) }
        let reportFalse1 = (false, failureValues1)
        let reportFalse2 = (false, failureValues2)
        
        let mixedValues1: [CacheResult] = [.success(15), .failure(addErr1), .success(22)]
        let mixedValues2: [CacheResult] = [.success(69), .failure(rmErr1), .success(22)]
        let reportFalse3 = (false, mixedValues1)
        let reportFalse4 = (false, mixedValues2)
        
        // These should pass
        NMAXCTAssertEqualResultsReport(reportTrue1, reportTrue1)
        NMAXCTAssertEqualResultsReport(reportFalse1, reportFalse1)
        NMAXCTAssertEqualResultsReport(reportFalse3, reportFalse3)
        NMAXCTAssertEqualResultsReport(reportFalse4, reportFalse4)
        
        // These should fail
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue1, reportTrue2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue1, reportFalse1)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue1, reportFalse2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue1, reportFalse3)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue1, reportFalse4)
        
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue2, reportFalse1)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue2, reportFalse2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue2, reportFalse3)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportTrue2, reportFalse4)
  
        // FIXME: Tests should be failing
//        XCTExpectFailure("Testing failure function")
//        NMAXCTAssertEqualResultsReport(reportFalse1, reportFalse2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportFalse1, reportFalse3)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportFalse1, reportFalse4)
        
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportFalse2, reportFalse3)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportFalse2, reportFalse4)
        
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(reportFalse3, reportFalse4)
        
        
        let success1 = TestResult.success(1)
        let success2 = TestResult.success(2)
        let success3 = TestResult.success(3)
        let failure1 = TestResult.failure(.err1)
        let failure2 = TestResult.failure(.err2)
        let successReport1: TestResultReport = (true, [success1, success2])
        let successReport2: TestResultReport = (true, [success1, success3])
        let failureReport1: TestResultReport = (false, [failure1, failure2])
        let mixedReport1: TestResultReport = (false, [success1, failure1])
        let mixedReport2: TestResultReport = (false, [success2, failure2])
        
        // should pass
        NMAXCTAssertEqualResult(success1, success1)
        NMAXCTAssertEqualResult(failure1, failure1)
        NMAXCTAssertEqualResultsReport(successReport1, successReport1)
        NMAXCTAssertEqualResultsReport(failureReport1, failureReport1)

        // should fail
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(success1, success2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(failure1, failure2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResult(success3, failure1)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(successReport1, successReport2)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(failureReport1, mixedReport1)
        XCTExpectFailure("Testing failure function")
        NMAXCTAssertEqualResultsReport(mixedReport2, mixedReport1)

    }
    
    
    
    
    private func resultValue(_ result: CacheResult) -> Int? {
        guard case let .success(value) = result else { return nil }
        return value
    }
    
    private func resultError(_ result: CacheResult) -> Error? {
        guard case let .failure(value) = result else { return nil }
        return value
    }
    
    private func resultsAction(_ results: CacheResultsReport) -> Bool {
        return results.insertedAll
    }
    
}

//Result<T, Error>




//func assertIsSuccess<T, E>(_ result: Result<T, E>,
//    then assertions: (T) -> Void = { _ in },
//    message: (E) -> String = { "Expected to be a success but got a failure with \($0) "},
//    file: StaticString = #filePath,
//    line: UInt = #line
//) where E: Error {
//    switch result {
//    case .failure(let error):
//        XCTFail(message(error), file: file, line: line)
//    case .success(let value):
//        assertions(value)
//    }
//}
//
//func assertIsFailure<T, E>(
//    _ result: Result<T, E>,
//    then assertions: (E) -> Void = { _ in },
//    message: (T) -> String = { "Expected to be a failure but got a success with \($0) "},
//    file: StaticString = #filePath,
//    line: UInt = #line
//) where E: Equatable & Error {
//    switch result {
//    case .failure(let error):
//        assertions(error)
//    case .success(let value):
//        XCTFail(message(value), file: file, line: line)
//    }
//}


