//
//  SFSystemSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation


public typealias SystemSymbolCollection = SystemSFSymbolCollection

/// A subject that is composed of `SFSymbol`'s from the specified `SystemCategory`
///
/// The contents of each `SystemSFSymbolCollection` come
/// from **Apple**'s desktop application, **SF Symbols.app, version 3.2**
@frozen public struct SystemSFSymbolCollection: SFSCollectionProtocol {
    
    public static let allSymbols =          SystemSFSymbolCollection(.allSymbols,        infoSymbol: .square_grid_2x2)
    public static let whats_new =           SystemSFSymbolCollection(.whats_new,         infoSymbol: .sparkles)
    public static let multicolor =          SystemSFSymbolCollection(.multicolor,        infoSymbol: .paintpalette)
    public static let communication =       SystemSFSymbolCollection(.communication,     infoSymbol: .message)
    public static let weather =             SystemSFSymbolCollection(.weather,           infoSymbol: .cloud_sun)
    public static let objects_and_tools =   SystemSFSymbolCollection(.objects_and_tools, infoSymbol: .folder)
    public static let devices =             SystemSFSymbolCollection(.devices,           infoSymbol: .desktopcomputer)
    public static let gaming =              SystemSFSymbolCollection(.gaming,            infoSymbol: .gamecontroller)
    public static let connectivity =        SystemSFSymbolCollection(.connectivity,      infoSymbol: .antenna_radiowaves_left_and_right)
    public static let transportation =      SystemSFSymbolCollection(.transportation,    infoSymbol: .car_fill)
    public static let human =               SystemSFSymbolCollection(.human,             infoSymbol: .person_crop_circle)
    public static let nature =              SystemSFSymbolCollection(.nature,            infoSymbol: .leaf)
    public static let editing =             SystemSFSymbolCollection(.editing,           infoSymbol: .slider_horizontal_3)
    public static let text_formatting =     SystemSFSymbolCollection(.text_formatting,   infoSymbol: .textformat)
    public static let media =               SystemSFSymbolCollection(.media,             infoSymbol: .playpause)
    public static let keyboard =            SystemSFSymbolCollection(.keyboard,          infoSymbol: .keyboard)
    public static let commerce =            SystemSFSymbolCollection(.commerce,          infoSymbol: .cart)
    public static let time =                SystemSFSymbolCollection(.time,              infoSymbol: .clock)
    public static let health =              SystemSFSymbolCollection(.health,            infoSymbol: .staroflife_fill)
    public static let shapes =              SystemSFSymbolCollection(.shapes,            infoSymbol: .square_on_circle)
    public static let arrows =              SystemSFSymbolCollection(.arrows,            infoSymbol: .arrow_right)
    public static let indices =             SystemSFSymbolCollection(.indices,           infoSymbol: .a_circle)
    public static let math =                SystemSFSymbolCollection(.math,              infoSymbol: .function)
    
    public static let allCollections: [SystemSFSymbolCollection] = [allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math]
    
    /// A collection from the given category
    /// - Parameter category: the system category to use
    /// - Returns: The collection for the category
    public static func forCategory(_ category: SFSymbol.SystemCategory) -> SystemSFSymbolCollection {
        return category.collection
    }
    
    public let category: SFSymbol.SystemCategory
    public let title: String
    public let infoSymbol: SFSymbol
    public let isEmpty: Bool = false
    public let symbols: Set<SFSymbol>
    public let count: Int
    
    private init(_ category: SFSymbol.SystemCategory, infoSymbol: SFSymbol) {
        self.category = category
        self.title = category.title
        self.infoSymbol = infoSymbol
        self.symbols = Set(category.symbols)
        self.count = category.symbols.count
    }
    
}

// MARK: - SystemSFSymbolCollection Identifiable conformance
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension SystemSFSymbolCollection: Identifiable {
    
    public var id: Int { self.category.rawValue }
    
}
