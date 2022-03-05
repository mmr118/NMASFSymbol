//
//  SFSystemSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

/// A subject that is composed of `SFSymbol`'s from the specified `SystemCategory`
///
/// The contents of each `SFSymbolSystemCollection` come
/// from **Apple**'s desktop application, **SF Symbols.app, version 3.2**
@frozen public struct SFSymbolSystemCollection: SFSymbolCollectionProtocol {
    
    public static let allSymbols =          SFSymbolSystemCollection(.allSymbols,        infoSymbol: .square_grid_2x2)
    public static let whats_new =           SFSymbolSystemCollection(.whats_new,         infoSymbol: .sparkles)
    public static let multicolor =          SFSymbolSystemCollection(.multicolor,        infoSymbol: .paintpalette)
    public static let communication =       SFSymbolSystemCollection(.communication,     infoSymbol: .message)
    public static let weather =             SFSymbolSystemCollection(.weather,           infoSymbol: .cloud_sun)
    public static let objects_and_tools =   SFSymbolSystemCollection(.objects_and_tools, infoSymbol: .folder)
    public static let devices =             SFSymbolSystemCollection(.devices,           infoSymbol: .desktopcomputer)
    public static let gaming =              SFSymbolSystemCollection(.gaming,            infoSymbol: .gamecontroller)
    public static let connectivity =        SFSymbolSystemCollection(.connectivity,      infoSymbol: .antenna_radiowaves_left_and_right)
    public static let transportation =      SFSymbolSystemCollection(.transportation,    infoSymbol: .car_fill)
    public static let human =               SFSymbolSystemCollection(.human,             infoSymbol: .person_crop_circle)
    public static let nature =              SFSymbolSystemCollection(.nature,            infoSymbol: .leaf)
    public static let editing =             SFSymbolSystemCollection(.editing,           infoSymbol: .slider_horizontal_3)
    public static let text_formatting =     SFSymbolSystemCollection(.text_formatting,   infoSymbol: .textformat)
    public static let media =               SFSymbolSystemCollection(.media,             infoSymbol: .playpause)
    public static let keyboard =            SFSymbolSystemCollection(.keyboard,          infoSymbol: .keyboard)
    public static let commerce =            SFSymbolSystemCollection(.commerce,          infoSymbol: .cart)
    public static let time =                SFSymbolSystemCollection(.time,              infoSymbol: .clock)
    public static let health =              SFSymbolSystemCollection(.health,            infoSymbol: .staroflife_fill)
    public static let shapes =              SFSymbolSystemCollection(.shapes,            infoSymbol: .square_on_circle)
    public static let arrows =              SFSymbolSystemCollection(.arrows,            infoSymbol: .arrow_right)
    public static let indices =             SFSymbolSystemCollection(.indices,           infoSymbol: .a_circle)
    public static let math =                SFSymbolSystemCollection(.math,              infoSymbol: .function)
    
    public static let allCollections: [SFSymbolSystemCollection] = [allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math]
    
    /// A collection from the given category
    /// - Parameter category: the system category to use
    /// - Returns: The collection for the category
    public static func forCategory(_ category: SFSymbol.SystemCategory) -> SFSymbolSystemCollection {
        return category.collection
    }
    
    public let category: SFSymbolSystemCategory
    public let title: String
    public let infoSymbol: SFSymbol
    public let isEmpty: Bool = false
    public let symbols: Set<SFSymbol>
    public let count: Int
    
    private init(_ category: SFSymbolSystemCategory, infoSymbol: SFSymbol) {
        self.category = category
        self.title = category.title
        self.infoSymbol = infoSymbol
        self.symbols = Set(category.symbols)
        self.count = category.symbols.count
    }
    
}

// MARK: - SFSymbolSystemCollection Identifiable conformance
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension SFSymbolSystemCollection: Identifiable {
    
    public var id: Int { self.category.rawValue }
    
}
