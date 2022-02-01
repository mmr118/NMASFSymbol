//
//  SFSymbol+SystemCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation

public typealias SFSSystemCollection = SFSymbol.SystemCollection

// MARK: - SFSymbol.SystemCollection
public extension SFSymbol {
    
    enum SystemCollection: SFSymbolCollectionProtocol, CaseIterable, Identifiable {
        
        public typealias ID = Int

        public static var cache = Set<SFSymbolCollection>()
        
        public static var allCases: [SFSymbol.SystemCollection] { allSystemCollections + cache.map { SystemCollection.custom($0) } }

        public static let allSystemCollections: [SystemCollection] = [.allSystem, whats_new, .multicolor, .communication, .weather, .objects_and_tools, .devices, .gaming, .connectivity, .transportation, .human, .nature, .editing, .text_formatting, .media, .keyboard, .commerce, .time, .health, .shapes, .arrows, .indices, .math]
        
        public static func allCases(including customs: [SFSymbolCollection]) -> [SystemCollection] {
            return allSystemCollections + customs.map { SystemCollection.custom($0) }
        }
        
        public var id: ID { return self.hashValue }

        case allSystem
        case whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
        case custom(SFSymbolCollection)

        public var displayName: String {
            switch self {
            case .allSystem: return "All"
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
            case .allSystem: return .square_grid_2x2
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
            case .allSystem: return SFSymbol.allCases
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
