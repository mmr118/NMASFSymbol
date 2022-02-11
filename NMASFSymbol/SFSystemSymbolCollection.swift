//
//  SFSystemSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

/// A subject that is composed of `SFSymbol`'s from the specified `SystemCategory`
///
/// The contents of each `SFSystemSymbolCollection` come
/// from **Apple**'s desktop application, **SF Symbols.app, version 3.2**
public final class SFSystemSymbolCollection: SFSymbolCollectionProtocol {

    public static let allSystemCollections = SFSymbolSystemCategory.allCases.map { $0.collection() }
    
    public static let allSymbols = SFSystemSymbolCollection(.allSymbols, symbols: SFSymbol.allCases, infoSymbol: .square_grid_2x2)
    public static let whats_new = SFSystemSymbolCollection(.whats_new, symbols: SFSymbol.WhatsNew, infoSymbol: .sparkles)
    public static let multicolor = SFSystemSymbolCollection(.multicolor, symbols: SFSymbol.Multicolor, infoSymbol: .paintpalette)
    public static let communication = SFSystemSymbolCollection(.communication, symbols: SFSymbol.Communication, infoSymbol: .message)
    public static let weather = SFSystemSymbolCollection(.weather, symbols: SFSymbol.Weather, infoSymbol: .cloud_sun)
    public static let objects_and_tools = SFSystemSymbolCollection(.objects_and_tools, symbols: SFSymbol.ObjectsAndTools, infoSymbol: .folder)
    public static let devices = SFSystemSymbolCollection(.devices, symbols: SFSymbol.Devices, infoSymbol: .desktopcomputer)
    public static let gaming = SFSystemSymbolCollection(.gaming, symbols: SFSymbol.Gaming, infoSymbol: .gamecontroller)
    public static let connectivity = SFSystemSymbolCollection(.connectivity, symbols: SFSymbol.Connectivity, infoSymbol: .antenna_radiowaves_left_and_right)
    public static let transportation = SFSystemSymbolCollection(.transportation, symbols: SFSymbol.Transportation, infoSymbol: .car_fill)
    public static let human = SFSystemSymbolCollection(.human, symbols: SFSymbol.Human, infoSymbol: .person_crop_circle)
    public static let nature = SFSystemSymbolCollection(.nature, symbols: SFSymbol.Nature, infoSymbol: .leaf)
    public static let editing = SFSystemSymbolCollection(.editing, symbols: SFSymbol.Editing, infoSymbol: .slider_horizontal_3)
    public static let text_formatting = SFSystemSymbolCollection(.text_formatting, symbols: SFSymbol.TextFormatting, infoSymbol: .textformat)
    public static let media = SFSystemSymbolCollection(.media, symbols: SFSymbol.Media, infoSymbol: .playpause)
    public static let keyboard = SFSystemSymbolCollection(.keyboard, symbols: SFSymbol.Keyboard, infoSymbol: .keyboard)
    public static let commerce = SFSystemSymbolCollection(.commerce, symbols: SFSymbol.Commerce, infoSymbol: .cart)
    public static let time = SFSystemSymbolCollection(.time, symbols: SFSymbol.Time, infoSymbol: .clock)
    public static let health = SFSystemSymbolCollection(.health, symbols: SFSymbol.Health, infoSymbol: .staroflife_fill)
    public static let shapes = SFSystemSymbolCollection(.shapes, symbols: SFSymbol.Shapes, infoSymbol: .square_on_circle)
    public static let arrows = SFSystemSymbolCollection(.arrows, symbols: SFSymbol.Arrows, infoSymbol: .arrow_right)
    public static let indices = SFSystemSymbolCollection(.indices, symbols: SFSymbol.Indices, infoSymbol: .a_circle)
    public static let math = SFSystemSymbolCollection(.math, symbols: SFSymbol.Math, infoSymbol: .function)

    public let uuid = UUID()
    
    public let category: SystemCategory
    public let title: String
    public let infoSymbol: SFSymbol
    public let count: Int
    public let isEmpty: Bool = false
    private let symbolSet: Set<SFSymbol>
    
    private init(_ category: SystemCategory, symbols: [SFSymbol], infoSymbol: SFSymbol) {
        self.category = category
        self.title = category.title
        self.infoSymbol = infoSymbol
        self.count = symbols.count
        self.symbolSet = Set(symbols)
    }
    
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
        
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


// MARK: - SFSystemSymbolCollection.SystemCategory
public typealias SFSymbolSystemCategory = SFSystemSymbolCollection.SystemCategory

extension SFSystemSymbolCollection {
    
    /// An enumeration representing the categories in **Apple**'s desktop
    /// application, **SF Symbols.app, version 3.2**
    @frozen public enum SystemCategory: Int, CaseIterable, Identifiable {
        
        case allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
        
        public var id: Int { rawValue }
                
        public var title: String {
            switch self {
            case .allSymbols: return "All Symbols"
            case .whats_new: return "What's New"
            case .objects_and_tools: return "Objects And Tools"
            case .text_formatting: return "Text Formatting"
            default: return caseString.capitalized
            }
        }
        
        public func collection() -> SFSystemSymbolCollection {
            switch self {
            case .allSymbols: return SFSystemSymbolCollection.allSymbols
            case .whats_new: return SFSystemSymbolCollection.whats_new
            case .multicolor: return SFSystemSymbolCollection.multicolor
            case .communication: return SFSystemSymbolCollection.communication
            case .weather: return SFSystemSymbolCollection.weather
            case .objects_and_tools: return SFSystemSymbolCollection.objects_and_tools
            case .devices: return SFSystemSymbolCollection.devices
            case .gaming: return SFSystemSymbolCollection.gaming
            case .connectivity: return SFSystemSymbolCollection.connectivity
            case .transportation: return SFSystemSymbolCollection.transportation
            case .human: return SFSystemSymbolCollection.human
            case .nature: return SFSystemSymbolCollection.nature
            case .editing: return SFSystemSymbolCollection.editing
            case .text_formatting: return SFSystemSymbolCollection.text_formatting
            case .media: return SFSystemSymbolCollection.media
            case .keyboard: return SFSystemSymbolCollection.keyboard
            case .commerce: return SFSystemSymbolCollection.commerce
            case .time: return SFSystemSymbolCollection.time
            case .health: return SFSystemSymbolCollection.health
            case .shapes: return SFSystemSymbolCollection.shapes
            case .arrows: return SFSystemSymbolCollection.arrows
            case .indices: return SFSystemSymbolCollection.indices
            case .math: return SFSystemSymbolCollection.math
            }
        }
    }
}


// MARK: - SFSymbol with SystemCategory
extension SFSymbol {
    
    public func symbols(in systemCategory: SFSymbolSystemCategory) -> [SFSymbol] {
        
        return systemCategory.collection().symbols()
        
    }
    
}

