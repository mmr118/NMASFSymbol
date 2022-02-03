//
//  SFSCollection+SystemCategory.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/3/22.
//

import Foundation

public extension SFSCollection {
    
    static let all: Set<SFSCollection> = Set(cache.elements() + SystemCategory.allCases.map { SFSCollection.System($0) })
    
    enum SystemCategory: Int, CaseIterable, Identifiable {
        
        public var id: Int { rawValue }
        
        case allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
    }
    
    static let allSymbols = SFSCollection(title: "All", defaultSymbol: .square_grid_2x2, symbols: SFSymbol.allCases)
    static let whats_new = SFSCollection(title: "What's New", defaultSymbol: .sparkles, symbols: SFSymbol.WhatsNew)
    static let multicolor = SFSCollection(title: "Multicolor", defaultSymbol: .sparkles, symbols: SFSymbol.Multicolor)
    static let communication = SFSCollection(title: "Communication", defaultSymbol: .message, symbols: SFSymbol.Communication)
    static let weather = SFSCollection(title: "Weather", defaultSymbol: .cloud_sun, symbols: SFSymbol.Weather)
    static let objects_and_tools = SFSCollection(title:  "Objects   Tools", defaultSymbol:  .folder, symbols:  SFSymbol.ObjectsAndTools)
    static let devices = SFSCollection(title: "Devices", defaultSymbol: .desktopcomputer, symbols: SFSymbol.Devices)
    static let gaming = SFSCollection(title: "Gaming", defaultSymbol: .gamecontroller, symbols: SFSymbol.Gaming)
    static let connectivity = SFSCollection(title: "Connectivity", defaultSymbol: .antenna_radiowaves_left_and_right, symbols: SFSymbol.Connectivity)
    static let transportation = SFSCollection(title: "Transportation", defaultSymbol: .car_fill, symbols: SFSymbol.Transportation)
    static let human = SFSCollection(title: "Human", defaultSymbol: .person_crop_circle, symbols: SFSymbol.Human)
    static let nature = SFSCollection(title: "Nature", defaultSymbol: .leaf, symbols: SFSymbol.Nature)
    static let editing = SFSCollection(title: "Editing", defaultSymbol: .slider_horizontal_3, symbols: SFSymbol.Editing)
    static let text_formatting = SFSCollection(title: "Text Formatting", defaultSymbol: .textformat, symbols: SFSymbol.TextFormatting)
    static let media = SFSCollection(title: "Media", defaultSymbol: .playpause, symbols: SFSymbol.Media)
    static let keyboard = SFSCollection(title: "Keyboard", defaultSymbol: .keyboard, symbols: SFSymbol.Keyboard)
    static let commerce = SFSCollection(title: "Commerce", defaultSymbol: .cart, symbols: SFSymbol.Commerce)
    static let time = SFSCollection(title: "Time", defaultSymbol: .clock, symbols: SFSymbol.Time)
    static let health = SFSCollection(title: "Health", defaultSymbol: .staroflife_fill, symbols: SFSymbol.Health)
    static let shapes = SFSCollection(title: "Shapes", defaultSymbol: .square_on_circle, symbols: SFSymbol.Shapes)
    static let arrows = SFSCollection(title: "Arrows", defaultSymbol: .arrow_right, symbols: SFSymbol.Arrows)
    static let indices = SFSCollection(title: "Indices", defaultSymbol: .a_circle, symbols: SFSymbol.Indices)
    static let math = SFSCollection(title: "Math", defaultSymbol: .function, symbols: SFSymbol.Math)

    static func System(category: SystemCategory) -> SFSCollection {
        return Self.System(category)
    }
    
    static func System(_ systemCategory: SystemCategory) -> SFSCollection {
        switch systemCategory {
        case .allSymbols: return Self.allSymbols
        case .whats_new: return Self.whats_new
        case .multicolor: return Self.multicolor
        case .communication: return Self.communication
        case .weather: return Self.weather
        case .objects_and_tools: return Self.objects_and_tools
        case .devices: return Self.devices
        case .gaming: return Self.gaming
        case .connectivity: return Self.connectivity
        case .transportation: return Self.transportation
        case .human: return Self.human
        case .nature: return Self.nature
        case .editing: return Self.editing
        case .text_formatting: return Self.text_formatting
        case .media: return Self.media
        case .keyboard: return Self.keyboard
        case .commerce: return Self.commerce
        case .time: return Self.time
        case .health: return Self.health
        case .shapes: return Self.shapes
        case .arrows: return Self.arrows
        case .indices: return Self.indices
        case .math: return Self.math
        }
    }
    
    
    convenience init(for systemCategory: SystemCategory) {
        switch systemCategory {
        case .allSymbols:           self.init(title: "All", defaultSymbol: .square_grid_2x2, symbols: SFSymbol.allCases)
        case .whats_new:            self.init(title: "What's New", defaultSymbol: .sparkles, symbols: SFSymbol.WhatsNew)
        case .multicolor:           self.init(title: "Multicolor", defaultSymbol: .sparkles, symbols: SFSymbol.Multicolor)
        case .communication:        self.init(title: "Communication", defaultSymbol: .message, symbols: SFSymbol.Communication)
        case .weather:              self.init(title: "Weather", defaultSymbol: .cloud_sun, symbols: SFSymbol.Weather)
        case .objects_and_tools:    self.init(title: "Objects & Tools", defaultSymbol: .folder, symbols: SFSymbol.ObjectsAndTools)
        case .devices:              self.init(title: "Devices", defaultSymbol: .desktopcomputer, symbols: SFSymbol.Devices)
        case .gaming:               self.init(title: "Gaming", defaultSymbol: .gamecontroller, symbols: SFSymbol.Gaming)
        case .connectivity:         self.init(title: "Connectivity", defaultSymbol: .antenna_radiowaves_left_and_right, symbols: SFSymbol.Connectivity)
        case .transportation:       self.init(title: "Transportation", defaultSymbol: .car_fill, symbols: SFSymbol.Transportation)
        case .human:                self.init(title: "Human", defaultSymbol: .person_crop_circle, symbols: SFSymbol.Human)
        case .nature:               self.init(title: "Nature", defaultSymbol: .leaf, symbols: SFSymbol.Nature)
        case .editing:              self.init(title: "Editing", defaultSymbol: .slider_horizontal_3, symbols: SFSymbol.Editing)
        case .text_formatting:      self.init(title: "Text Formatting", defaultSymbol: .textformat, symbols: SFSymbol.TextFormatting)
        case .media:                self.init(title: "Media", defaultSymbol: .playpause, symbols: SFSymbol.Media)
        case .keyboard:             self.init(title: "Keyboard", defaultSymbol: .keyboard, symbols: SFSymbol.Keyboard)
        case .commerce:             self.init(title: "Commerce", defaultSymbol: .cart, symbols: SFSymbol.Commerce)
        case .time:                 self.init(title: "Time", defaultSymbol: .clock, symbols: SFSymbol.Time)
        case .health:               self.init(title: "Health", defaultSymbol: .staroflife_fill, symbols: SFSymbol.Health)
        case .shapes:               self.init(title: "Shapes", defaultSymbol: .square_on_circle, symbols: SFSymbol.Shapes)
        case .arrows:               self.init(title: "Arrows", defaultSymbol: .arrow_right, symbols: SFSymbol.Arrows)
        case .indices:              self.init(title: "Indices", defaultSymbol: .a_circle, symbols: SFSymbol.Indices)
        case .math:                 self.init(title: "Math", defaultSymbol: .function, symbols: SFSymbol.Math)
        }
        
        self.systemCategory = systemCategory
    }
    
}
