//
//  SFSSystemCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

final class SFSSystemCollection: SFSCollectionProtocol {
    
    public let title: String
    public let defaultSymbol: SFSymbol
    public var id: Int

    private let symbolSet: Set<SFSymbol>
    
    private init(category: SFSCollection.SystemCategory) {
        switch category {
        case .allSymbols:
            self.title = "All"
            self.defaultSymbol = .square_grid_2x2
            self.symbolSet = Set(SFSymbol.allCases)
        case .whats_new:
            self.title = "What's New"
            self.defaultSymbol = .sparkles
            self.symbolSet = Set(SFSymbol.WhatsNew)
        case .multicolor:
            self.title = "Multicolor"
            self.defaultSymbol = .sparkles
            self.symbolSet = Set(SFSymbol.Multicolor)
        case .communication:
            self.title = "Communication"
            self.defaultSymbol = .message
            self.symbolSet = Set(SFSymbol.Communication)
        case .weather:
            self.title = "Weather"
            self.defaultSymbol = .cloud_sun
            self.symbolSet = Set(SFSymbol.Weather)
        case .objects_and_tools:
            self.title = "Objects & Tools"
            self.defaultSymbol = .folder
            self.symbolSet = Set(SFSymbol.ObjectsAndTools)
        case .devices:
            self.title = "Devices"
            self.defaultSymbol = .desktopcomputer
            self.symbolSet = Set(SFSymbol.Devices)
        case .gaming:
            self.title = "Gaming"
            self.defaultSymbol = .gamecontroller
            self.symbolSet = Set(SFSymbol.Gaming)
        case .connectivity:
            self.title = "Connectivity"
            self.defaultSymbol = .antenna_radiowaves_left_and_right
            self.symbolSet = Set(SFSymbol.Connectivity)
        case .transportation:
            self.title = "Transportation"
            self.defaultSymbol = .car_fill
            self.symbolSet = Set(SFSymbol.Transportation)
        case .human:
            self.title = "Human"
            self.defaultSymbol = .person_crop_circle
            self.symbolSet = Set(SFSymbol.Human)
        case .nature:
            self.title = "Nature"
            self.defaultSymbol = .leaf
            self.symbolSet = Set(SFSymbol.Nature)
        case .editing:
            self.title = "Editing"
            self.defaultSymbol = .slider_horizontal_3
            self.symbolSet = Set(SFSymbol.Editing)
        case .text_formatting:
            self.title = "Text Formatting"
            self.defaultSymbol = .textformat
            self.symbolSet = Set(SFSymbol.TextFormatting)
        case .media:
            self.title = "Media"
            self.defaultSymbol = .playpause
            self.symbolSet = Set(SFSymbol.Media)
        case .keyboard:
            self.title = "Keyboard"
            self.defaultSymbol = .keyboard
            self.symbolSet = Set(SFSymbol.Keyboard)
        case .commerce:
            self.title = "Commerce"
            self.defaultSymbol = .cart
            self.symbolSet = Set(SFSymbol.Commerce)
        case .time:
            self.title = "Time"
            self.defaultSymbol = .clock
            self.symbolSet = Set(SFSymbol.Time)
        case .health:
            self.title = "Health"
            self.defaultSymbol = .staroflife_fill
            self.symbolSet = Set(SFSymbol.Health)
        case .shapes:
            self.title = "Shapes"
            self.defaultSymbol = .square_on_circle
            self.symbolSet = Set(SFSymbol.Shapes)
        case .arrows:
            self.title = "Arrows"
            self.defaultSymbol = .arrow_right
            self.symbolSet = Set(SFSymbol.Arrows)
        case .indices:
            self.title = "Indices"
            self.defaultSymbol = .a_circle
            self.symbolSet = Set(SFSymbol.Indices)
        case .math:
            self.title = "Math"
            self.defaultSymbol = .function
            self.symbolSet = Set(SFSymbol.Math)
        }
        
        self.id = category.id
    }
    
    public func symbols() -> [SFSymbol] {
        return Array(symbolSet)
    }
    
}
