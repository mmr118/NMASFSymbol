//
//  SFSymbol+Category.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

struct CustomCategory {
    var name: String
    var displayName: String
    var 
}

public extension SFSymbol {
    
    enum Category: Int, CaseIterable {
        
        case all
        case whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
        case custom(name: String, symbols: )
                                
        var displayName: String {
            switch self {
            case .whats_new: return "What's New"
            case .objects_and_tools: return "Objects & Tools"
            case .text_formatting: return "Text Formatting"
            default: return rawString.capitalized
            }
        }
        
        func symbols() -> [SFSymbol] {
            switch self {
            case .all: return SFSymbol.allCases
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
            }
        }
        
        var defaultSymbol: SFSymbol {
            switch self {
            case .all: return .square_grid_2x2
            case .circleFilled: return .bag_circle_fill
            case .suggested: return .cart_fill
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
            }
        }
        
    }
    
}
