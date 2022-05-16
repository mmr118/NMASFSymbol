//
//  SFSymbol+SystemCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 5/16/22.
//

import Foundation

public extension SFSymbol {
    
    enum SystemCollection: String {
        case whatsNew
        case multicolor
        case communication
        case weather
        case objectsAndTools
        case devices
        case gaming
        case connectivity
        case transportation
        case human
        case nature
        case editing
        case textFormatting
        case media
        case keyboard
        case commerce
        case time
        case health
        case shapes
        case arrows
        case indices
        case math
        
        public var symbols: [SFSymbol] {
            switch self {
            case .whatsNew: return SFSymbol.WhatsNew
            case .multicolor: return SFSymbol.Multicolor
            case .communication: return SFSymbol.Communication
            case .weather: return SFSymbol.Weather
            case .objectsAndTools: return SFSymbol.ObjectsAndTools
            case .devices: return SFSymbol.Devices
            case .gaming: return SFSymbol.Gaming
            case .connectivity: return SFSymbol.Connectivity
            case .transportation: return SFSymbol.Transportation
            case .human: return SFSymbol.Human
            case .nature: return SFSymbol.Nature
            case .editing: return SFSymbol.Editing
            case .textFormatting: return SFSymbol.TextFormatting
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
        
        var infoSymbol: SFSymbol {
            switch self {
            case .whatsNew: return .sparkles
            case .multicolor: return .paintpalette
            case .communication: return .message
            case .weather: return .cloud_sun
            case .objectsAndTools: return .folder
            case .devices: return .desktopcomputer
            case .gaming: return .gamecontroller
            case .connectivity: return .antenna_radiowaves_left_and_right
            case .transportation: return .car_fill
            case .human: return .person_crop_circle
            case .nature: return .leaf
            case .editing: return .slider_horizontal_3
            case .textFormatting: return .textformat
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
