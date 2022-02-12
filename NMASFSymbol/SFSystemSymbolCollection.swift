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
    
    /// A collection from the given category
    /// - Parameter category: the system category to use
    /// - Returns: The collection for the category
    public static func forCategory(_ category: SFSymbol.SystemCategory) -> SFSystemSymbolCollection {
        return category.collection()
    }
        
    public let category: SFSymbolSystemCategory
    public let title: String
    public let infoSymbol: SFSymbol
    public let count: Int
    public let isEmpty: Bool = false
    public let symbols: Set<SFSymbol>
    
    private init(_ category: SFSymbolSystemCategory, symbols: [SFSymbol], infoSymbol: SFSymbol) {
        self.category = category
        self.title = category.title
        self.infoSymbol = infoSymbol
        self.count = symbols.count
        self.symbols = Set(symbols)
    }
    
}
