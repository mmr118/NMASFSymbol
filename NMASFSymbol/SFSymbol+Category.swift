//
//  SFSymbol+Category.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

// MARK: - SFSymbolCategory
public protocol SFSymbolCategory: Hashable, Identifiable {

    var displayName: String { get }

    var defaultSymbol: SFSymbol { get }

    func symbols() -> [SFSymbol]
}

public extension SFSymbolCategory {

    var id: Int { self.hashValue }

    func symbolsEqual<T: SFSymbolCategory>(_ category: T) -> Bool {
        return Set(self.symbols()) == Set(category.symbols())
    }

    static func == (lhs: Self, rhs: Self) -> Bool {
        guard lhs.displayName == rhs.displayName else { return false }
        guard lhs.defaultSymbol == rhs.defaultSymbol else { return false }
        return Set(lhs.symbols()) == Set(rhs.symbols())
    }

}


public extension SFSymbol {

    static var customCategories = Set<CustomCategory>()
    
    enum Category: SFSymbolCategory, CaseIterable {
        
        public typealias ID = Int

        public static var cachedCustoms = Set<CustomCategory>()
        
        public static var allCases: [SFSymbol.Category] { allDefaultCategories + cachedCustoms.map { Category.custom($0) } }

        public static let allDefaultCategories: [Category] = [.allDefaults, whats_new, .multicolor, .communication, .weather, .objects_and_tools, .devices, .gaming, .connectivity, .transportation, .human, .nature, .editing, .text_formatting, .media, .keyboard, .commerce, .time, .health, .shapes, .arrows, .indices, .math]
        
        public static func allCases(including customCategories: [CustomCategory]) -> [Category] {
            return allDefaultCategories + customCategories.map { Category.custom($0) }
        }
        
        public var id: ID { return self.hashValue }

        case allDefaults
        case whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
        case custom(CustomCategory)

        public var displayName: String {
            switch self {
            case .allDefaults: return "All"
            case .whats_new: return "What's New"
            case .multicolor: return "Multicolor"
            case .communication: return "Communication"
            case .weather: return "Weather"
            case .objects_and_tools: return "Objects & Tools"
            case .devices: return "Devices"
            case .gaming: return "Gaming"
            case .connectivity: return "Connectivity"
            case .transportation: return "Transportation"
            case .human: return "Human"
            case .nature: return "Nature"
            case .editing: return "Editing"
            case .text_formatting: return "Text Formatting"
            case .media: return "Media"
            case .keyboard: return "Keyboard"
            case .commerce: return "Commerce"
            case .time: return "Time"
            case .health: return "Health"
            case .shapes: return "Shapes"
            case .arrows: return "Arrows"
            case .indices: return "Indices"
            case .math: return "Math"
            case .custom(let custom):
                return custom.displayName
            }
        }
        
        public var defaultSymbol: SFSymbol {
            switch self {
            case .allDefaults: return .square_grid_2x2
            case .whats_new: return .sparkles
            case .multicolor: return .paintpalette_fill
            case .communication: return .message
            case .weather: return .cloud_sun
            case .objects_and_tools: return .folder
            case .devices: return .desktopcomputer
            case .gaming: return .gamecontroller
            case .connectivity: return .antenna_radiowaves_left_and_right
            case .transportation: return .car_fill
            case .human: return .person_crop_circle
            case .nature: return .leaf
            case .editing: return .slider_horizontal_3
            case .text_formatting: return .textformat
            case .media: return .playpause
            case .keyboard: return .keyboard
            case .commerce: return .cart
            case .time: return .clock
            case .health: return .staroflife_fill
            case .shapes: return .square_on_circle
            case .arrows: return .arrow_right
            case .indices: return .a_circle
            case .math: return .function
            case .custom(let custom):
                return custom.defaultSymbol
            }
        }

        public func symbols() -> [SFSymbol] {
            switch self {
            case .allDefaults: return SFSymbol.allCases
            case .whats_new: return SFSymbol.WhatsNew
            case .multicolor: return SFSymbol.Multicolor
            case .communication: return SFSymbol.Communication
            case .weather: return SFSymbol.Weather
            case .objects_and_tools: return SFSymbol.ObjectsAndTools
            case .devices: return SFSymbol.Devices
            case .gaming: return SFSymbol.Gaming
            case .connectivity: return SFSymbol.Connectivity
            case .transportation: return SFSymbol.Transportation
            case .human: return SFSymbol.Human
            case .nature: return SFSymbol.Nature
            case .editing: return SFSymbol.Editing
            case .text_formatting: return SFSymbol.TextFormatting
            case .media: return SFSymbol.Media
            case .keyboard: return SFSymbol.Keyboard
            case .commerce: return SFSymbol.Commerce
            case .time: return SFSymbol.Time
            case .health: return SFSymbol.Health
            case .shapes: return SFSymbol.Shapes
            case .arrows: return SFSymbol.Arrows
            case .indices: return SFSymbol.Indices
            case .math: return SFSymbol.Math
            case .custom(let custom):
                return custom.symbols()
            }
        }
        
    }

}


// MARK: - SFSymbol.CustomCategory
// MARK: - SFSymbol.CustomCategory
public extension SFSymbol {

    class CustomCategory: NSObject, SFSymbolCategory {

        public var displayName: String
        public private(set) var defaultSymbol: SFSymbol

        private var symbolSet = Set<SFSymbol>()

        public init(displayName: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
            self.displayName = displayName
            self.defaultSymbol = defaultSymbol
            self.symbolSet = Set(symbols)
        }
        
        public func symbols() -> [SFSymbol] {
            return Array(symbolSet)
        }

        public func updateDefaultSymbol(_ newDefault: SFSymbol, addToSymbolsIfNeed: Bool = true, removeExistingDefault: Bool = false) {
            if removeExistingDefault {
                symbolSet.remove(defaultSymbol)
            }

            if addToSymbolsIfNeed {
                symbolSet.insert(newDefault)
            }

            self.defaultSymbol = newDefault
        }

        @discardableResult
        public func add(_ symbol: SFSymbol) -> Bool {
            return symbolSet.insert(symbol).inserted
        }

        public func add(_ symbols: [SFSymbol]) {
            symbolSet.formUnion(symbols)
        }

        @discardableResult
        public func remove(_ symbol: SFSymbol) -> SFSymbol? {
            return symbolSet.remove(symbol)
        }

        public func addCategory(_ category: Category) {
            symbolSet.formUnion(category.symbols())
        }

        public func addCategories(_ categories: [Category]) {
            categories.forEach { symbolSet.formUnion($0.symbols()) }
        }

        public func removeCategory(_ category: Category) {
            let presentSymbols = symbolSet.intersection(category.symbols())
            presentSymbols.forEach { symbolSet.remove($0) }
        }
        
        public func contains(_ symbol: SFSymbol) -> Bool {
            return symbolSet.contains(symbol)
        }
        
        @discardableResult
        public func cache() -> Bool {
            return Category.cachedCustoms.insert(self).inserted
        }
        
        public func removeFromCache() {
            Category.cachedCustoms.remove(self)
        }

    }
    
}

/*
public extension SFSymbol {


    struct CustomCategory: SFSymbolCategory {

        public var displayName: String
        public private(set) var defaultSymbol: SFSymbol

        private var symbolSet = Set<SFSymbol>()

        public init(displayName: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
            self.displayName = displayName
            self.defaultSymbol = defaultSymbol
            self.symbolSet = Set(symbols)
        }

        public func symbols() -> [SFSymbol] {
            return Array(symbolSet)
        }

        public mutating func updateDefaultSymbol(_ newDefault: SFSymbol, addToSymbolsIfNeed: Bool = true, removeExistingDefault: Bool = false) {
            if removeExistingDefault {
                symbolSet.remove(defaultSymbol)
            }

            if addToSymbolsIfNeed {
                symbolSet.insert(newDefault)
            }

            self.defaultSymbol = newDefault
        }

        @discardableResult
        public mutating func add(_ symbol: SFSymbol) -> Bool {
            return symbolSet.insert(symbol).inserted
        }

        public mutating func add(_ symbols: [SFSymbol]) {
            symbolSet.formUnion(symbols)
        }

        @discardableResult
        public mutating func remove(_ symbol: SFSymbol) -> SFSymbol? {
            return symbolSet.remove(symbol)
        }

        public mutating func addCategory(_ category: Category) {
            symbolSet.formUnion(category.symbols())
        }

        public mutating func addCategories(_ categories: [Category]) {
            categories.forEach { symbolSet.formUnion($0.symbols()) }
        }

        public mutating func removeCategory(_ category: Category) {
            let presentSymbols = symbolSet.intersection(category.symbols())
            presentSymbols.forEach { symbolSet.remove($0) }
        }

    }
    
}
*/
