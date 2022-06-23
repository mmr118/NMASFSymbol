//
//  LiteLogger.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

import Foundation

public struct LiteLogger {
    
    var headerString: String?
    var header: String { headerString != nil ? headerString! + "-" : String() }
    
    public init(header: String? = nil) {
        self.headerString = header
    }
    
    public func msg(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "\(header)🔵[\(function) #\(line)]: \(message)"
        print(output)
    }
    
    public func warn(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "\(header)⚠️[\(function) #\(line)]: \(message)"
        print(output)
    }
    
    public func suc(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "\(header)✅ [\(function) #\(line)]: \(message)"
        print(output)
    }
    
    public func err(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "\(header)🛑 [\(function) #\(line)]: \(message)"
        print(output)
    }
    
    public func err(_ error: Error, message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "\(header)🛑 [\(function) #\(line)]: \(message) { Error: \(error.localizedDescription) } "
        print(output)
    }

    
    public func stop(_ message: String = String(), function: StaticString = #function, line: UInt = #line) -> Never {
        let output = "\(header)💀 [\(function) #\(line)]: \(message)"
        print(output)
        return fatalError()
    }
    
    public func stop(_ error: Error, message: String = String(), function: StaticString = #function, line: UInt = #line) -> Never {
        let message = "Fatal Error: \(message)—> [\(error.localizedDescription)]"
        return stop(message, function: function, line: line)
    }
    
    public func result<T>(_ result: Result<T, Error>, message: String = String(), function: StaticString = #function, line: UInt = #line) {
        switch result {
        case .success(let value):
            let resultMessage = "{Result.Success(\(String(describing: value))}--\(message)"
            suc(resultMessage, function: function, line: line)
            
        case .failure(let error):
            let resultMessage = "{Result.Failure}--\(message)"
            err(error, message: resultMessage, function: function, line: line)
        }
    }
    
}

public extension LiteLogger {
    
    static func msg(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "🔵[\(function) #\(line)]: \(message)"
        print(output)
    }
    
    static func warn(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "⚠️[\(function) #\(line)]: \(message)"
        print(output)
    }
    
    static func suc(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "✅ [\(function) #\(line)]: \(message)"
        print(output)
    }
    
    static func err(_ message: String = String(), function: StaticString = #function, line: UInt = #line) {
        let output = "🛑 [\(function) #\(line)]: \(message)"
        print(output)
    }
    
    static func stop(_ message: String = String(), function: StaticString = #function, line: UInt = #line) -> Never {
        let output = "💀 [\(function) #\(line)]: \(message)"
        print(output)
        fatalError()
    }
    
    static func stop(_ error: Error, message: String = String(), function: StaticString = #function, line: UInt = #line) -> Never {
        let message = "Fatal Error: \(message)—> [\(error.localizedDescription)]"
        stop(message, function: function, line: line)
    }
    
}
