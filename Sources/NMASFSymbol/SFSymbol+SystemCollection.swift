//
//  SFSymbol+SystemCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 5/16/22.
//

import Foundation

public extension SFSymbol {
    
    enum SystemCollection: String, CaseIterable, Identifiable {

        case allSymbols
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

        public var id: String { rawValue }
        
        public var displayName: String {
            switch self {
            case .allSymbols: return "All Symbols"
            case .whatsNew: return "What's New"
            case .objectsAndTools: return "Objects & Tools"
            case .textFormatting: return "Text Formatting"
            default: return rawValue.capitalized
            }
        }

        public var symbols: [SFSymbol] {
            switch self {
            case .allSymbols: return SFSymbol.allCases
            case .whatsNew: return SFSymbol.WhatsNewSymbols
            case .multicolor: return SFSymbol.MulticolorSymbols
            case .communication: return SFSymbol.CommunicationSymbols
            case .weather: return SFSymbol.WeatherSymbols
            case .objectsAndTools: return SFSymbol.ObjectsAndToolsSymbols
            case .devices: return SFSymbol.DevicesSymbols
            case .gaming: return SFSymbol.GamingSymbols
            case .connectivity: return SFSymbol.ConnectivitySymbols
            case .transportation: return SFSymbol.TransportationSymbols
            case .human: return SFSymbol.HumanSymbols
            case .nature: return SFSymbol.NatureSymbols
            case .editing: return SFSymbol.EditingSymbols
            case .textFormatting: return SFSymbol.TextFormattingSymbols
            case .media: return SFSymbol.MediaSymbols
            case .keyboard: return SFSymbol.KeyboardSymbols
            case .commerce: return SFSymbol.CommerceSymbols
            case .time: return SFSymbol.TimeSymbols
            case .health: return SFSymbol.HealthSymbols
            case .shapes: return SFSymbol.ShapesSymbols
            case .arrows: return SFSymbol.ArrowsSymbols
            case .indices: return SFSymbol.IndicesSymbols
            case .math: return SFSymbol.MathSymbols
            }
        }
        
        public var infoSymbol: SFSymbol {
            switch self {
            case .allSymbols: return SFSymbol.circle_grid_2x2
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
