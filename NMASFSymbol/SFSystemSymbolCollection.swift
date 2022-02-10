//
//  SFSystemSymbolCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import UIKit
import SwiftUI

    
public final class SFSystemSymbolCollection: SFSymbolCollection {
    
    static let allSymbols = SFSystemSymbolCollection(.allSymbols, symbols: SFSymbol.allCases, infoSymbol: .square_grid_2x2)
    static let whats_new = SFSystemSymbolCollection(.whats_new, symbols: SFSymbol.WhatsNew, infoSymbol: .sparkles)
    static let multicolor = SFSystemSymbolCollection(.multicolor, symbols: SFSymbol.Multicolor, infoSymbol: .sparkles)
    static let communication = SFSystemSymbolCollection(.communication, symbols: SFSymbol.Communication, infoSymbol: .message)
    static let weather = SFSystemSymbolCollection(.weather, symbols: SFSymbol.Weather, infoSymbol: .cloud_sun)
    static let objects_and_tools = SFSystemSymbolCollection(.objects_and_tools, symbols: SFSymbol.ObjectsAndTools, infoSymbol: .folder)
    static let devices = SFSystemSymbolCollection(.devices, symbols: SFSymbol.Devices, infoSymbol: .desktopcomputer)
    static let gaming = SFSystemSymbolCollection(.gaming, symbols: SFSymbol.Gaming, infoSymbol: .gamecontroller)
    static let connectivity = SFSystemSymbolCollection(.connectivity, symbols: SFSymbol.Connectivity, infoSymbol: .antenna_radiowaves_left_and_right)
    static let transportation = SFSystemSymbolCollection(.transportation, symbols: SFSymbol.Transportation, infoSymbol: .car_fill)
    static let human = SFSystemSymbolCollection(.human, symbols: SFSymbol.Human, infoSymbol: .person_crop_circle)
    static let nature = SFSystemSymbolCollection(.nature, symbols: SFSymbol.Nature, infoSymbol: .leaf)
    static let editing = SFSystemSymbolCollection(.editing, symbols: SFSymbol.Editing, infoSymbol: .slider_horizontal_3)
    static let text_formatting = SFSystemSymbolCollection(.text_formatting, symbols: SFSymbol.TextFormatting, infoSymbol: .textformat)
    static let media = SFSystemSymbolCollection(.media, symbols: SFSymbol.Media, infoSymbol: .playpause)
    static let keyboard = SFSystemSymbolCollection(.keyboard, symbols: SFSymbol.Keyboard, infoSymbol: .keyboard)
    static let commerce = SFSystemSymbolCollection(.commerce, symbols: SFSymbol.Commerce, infoSymbol: .cart)
    static let time = SFSystemSymbolCollection(.time, symbols: SFSymbol.Time, infoSymbol: .clock)
    static let health = SFSystemSymbolCollection(.health, symbols: SFSymbol.Health, infoSymbol: .staroflife_fill)
    static let shapes = SFSystemSymbolCollection(.shapes, symbols: SFSymbol.Shapes, infoSymbol: .square_on_circle)
    static let arrows = SFSystemSymbolCollection(.arrows, symbols: SFSymbol.Arrows, infoSymbol: .arrow_right)
    static let indices = SFSystemSymbolCollection(.indices, symbols: SFSymbol.Indices, infoSymbol: .a_circle)
    static let math = SFSystemSymbolCollection(.math, symbols: SFSymbol.Math, infoSymbol: .function)

    let category: SFSSystemCategory
    
    private init(_ category: SFSSystemCategory, symbols: [SFSymbol], infoSymbol: SFSymbol) {
        self.category = category
        super.init(title: category.title, symbols: symbols)
        self.updateInfoSymbol(infoSymbol)
    }
    
}
