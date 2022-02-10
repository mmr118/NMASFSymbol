//
//  NMACache.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/3/22.
//

import Foundation

public enum NMACacheError: Error, Equatable {
    case elementExisits(String)
    case elementDNE(String)
    case capacityLimitReached(String)
    var localizedDescription: String {
        switch self {
        case .elementExisits(let string):
            return "NMACacheError.elemntExisits: `add(_:)` did not add the element \"\(string)\"; it already exisits in the Cache."
        case .elementDNE(let string):
            return "NMACacheError.elemntDNE: `remove(_:)` did not remove the element \"\(string)\"; it does not exisits in the Cache."
        case .capacityLimitReached(let string):
            return "NMACacheError.capacityLimitReached: `add(_:)` did not add the element \"\(string)\"; Cache capacity limit has been reached."

        }
    }
}


final public class NMACache<T: Any> where T: Equatable {
    
    public typealias CacheResult = Result<T, Error>
    public typealias CacheResultsReport = (insertedAll: Bool, results: Array<CacheResult>)

    public enum DumpCycle {
        case never
        case onceOn(on: Date)
        case onceIn(interval: TimeInterval)
        case loop(interval: TimeInterval)
        case capacityLimit(count: Int)
    }
    
    internal let uuid = UUID()
    
    private var dumpCycleTimer: Timer?
    private var contents = [T]()
    
    public var isEmpty: Bool { contents.isEmpty }
    public var count: Int { contents.count }
    public var dumpHander: (([T]) -> Void)?
    
    public var capcityLimit: Int? {
        guard case let .capacityLimit(limit) = dumpCycle else { return nil }
        return limit
    }
    
    public var allowsDuplicates: Bool = false {
        didSet { removeDuplacates() }
    }
    
    public var dumpCycle: DumpCycle = .never {
        didSet { configureCycleTimer() }
    }
    
    // MARK: - Init
    public init(dumpCycle: DumpCycle = .never, allowsDuplicates: Bool = false) {
        self.dumpCycle = dumpCycle
        self.allowsDuplicates = allowsDuplicates
    }
    
    public convenience init<S: Sequence>(contents: S, dumpCycle: DumpCycle = .never, allowsDuplicates: Bool = false) where S.Element == T {
        self.init(dumpCycle: dumpCycle, allowsDuplicates: allowsDuplicates)
        self.contents = contents.map { $0 }
    }
    
    // MARK: Access
    public func elements() -> [T] {
        return contents
    }
    
    public func contains(_ elem: T) -> Bool {
        return contents.contains(elem)
    }

    // MARK: Add
    @discardableResult
    public func add(_ elem: T) -> CacheResult {
        return throwWrapper(elem, privateAdd)
    }
    
    @discardableResult
    public func add<S: Sequence>(elems: S) -> CacheResultsReport where S.Element == T {
        var results = [CacheResult]()
        var insertedAll = true
        
        for elem in elems {
            let result = add(elem)
            if case .failure = result { insertedAll = false }
            results.append(result)
        }
        
        return (insertedAll, results)
    }

    // MARK: Remove
    @discardableResult
    public func remove(_ elem: T) -> CacheResult {
        return throwWrapper(elem, privateRemove)
    }
    
    @discardableResult
    public func remove<S: Sequence>(elems: S) -> CacheResultsReport where S.Element == T {
        var results = [CacheResult]()
        var insertedAll = true
        
        for elem in elems {
            let result = remove(elem)
            if case .failure = result { insertedAll = false }
            results.append(result)
        }
        
        return (insertedAll, results)
    }
    
    @discardableResult
    public func dump() -> [T] {
        let removedElems = contents
        contents.removeAll()
        return removedElems
    }
    
    @objc private func timerDumpHandler() {
        dump()
        switch dumpCycle {
        case .onceOn, .onceIn:
            dumpCycle = .never
        default:
            break
        }
    }
    
}

extension NMACache: Hashable {
    
    // MARK: Hashable
    public static func == (lhs: NMACache<T>, rhs: NMACache<T>) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    public func hash(into hasher: inout Hasher) {
        hasher.combine(uuid.hashValue)
    }
    
}



// MARK: - Private
extension NMACache {

    private func privateAdd(_ elem: T) throws -> T {
        dumpContentsIfNeeded()
        
        if canAdd(elem) {
            contents.append(elem)
            return elem
        } else {
            let info = String(describing: elem)
            throw NMACacheError.elementExisits(info)
        }
        
    }
    
    private func privateRemove(_ elem: T) throws -> T {
        if let index = contents.firstIndex(of: elem) {
            contents.remove(at: index)
            return elem
        } else {
            let info = String(describing: elem)
            throw NMACacheError.elementDNE(info)
        }
    }
    
    private func isAddAvailable(_ elem: T) -> Bool {
        clearIfLimitReached()
        assert(clearIfLimitReached() == false )
        return allowsDuplicates == false && contents.contains(elem)
    }
        
    @discardableResult
    private func clearIfLimitReached() -> Bool {
        guard case .capacityLimit(let limit) = dumpCycle else { return false }
        if contents.count >= limit {
            dumpHander?(dump())
            return true
        } else {
            return false
        }
    }
        
    private func configureCycleTimer() {
        switch dumpCycle {
            
        case .never:
            dumpCycleTimer?.invalidate()
            dumpCycleTimer = nil
            
        case .capacityLimit:
            break
            
        case .onceOn(let clearDate):
            fireTimer(clearDate.timeIntervalSinceNow, repeats: false)
            
        case .onceIn(let interval):
            fireTimer(interval, repeats: false)
            
        case .loop(let interval):
            fireTimer(interval, repeats: true)
            
        }
    }
        
    private func fireTimer(_ interval: TimeInterval, repeats: Bool) {
        
        let timer = Timer.scheduledTimer(withTimeInterval: interval, repeats: repeats) { [weak self] timer in
            guard let strongSelf = self else { return }
            
            DispatchQueue.main.async {
                let removedElems = strongSelf.dump()
                strongSelf.dumpHander?(removedElems)
            }
        }
        
        timer.fire()
        self.dumpCycleTimer = timer

    }
    
    private func removeDuplacates() {
        
        contents = contents.reduce([T]()) { current, next in
            if current.contains(next) {
                return current
            } else {
                return current + [next]
            }
            
        }
            
    }
    
}

extension NMACache {
    
    private func dumpContentsIfNeeded() {
        if case .capacityLimit(let limit) = dumpCycle {
            if contents.count >= limit {
                dumpHander?(dump())
            }
        }
    }
    
    private func canAdd(_ elem: T) -> Bool {
        if allowsDuplicates == false {
            return !contents.contains(elem)
        } else {
            return true
        }
    }
    
    private func throwWrapper(_ elem: T, _ f: (T) throws -> T) -> CacheResult {
        return CacheResult { try f(elem) }
    }
    
}
