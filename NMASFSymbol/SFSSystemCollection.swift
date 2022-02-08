//
//  SFSSystemCollection.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation


final public class SFSSystemCollection: SFSCollection {
    
    public enum SFSCategory: Int, CaseIterable, Identifiable {
        public var id: Int { rawValue }
        case allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
        
        public func collection() -> SFSSystemCollection {
            return SFSSystemCollection(self)
        }
    }
    
    public static let allSymbols =         SFSSystemCollection(.allSymbols)
    public static let whats_new =          SFSSystemCollection(.whats_new)
    public static let multicolor =         SFSSystemCollection(.multicolor)
    public static let communication =      SFSSystemCollection(.communication)
    public static let weather =            SFSSystemCollection(.weather)
    public static let objects_and_tools =  SFSSystemCollection(.objects_and_tools)
    public static let devices =            SFSSystemCollection(.devices)
    public static let gaming =             SFSSystemCollection(.gaming)
    public static let connectivity =       SFSSystemCollection(.connectivity)
    public static let transportation =     SFSSystemCollection(.transportation)
    public static let human =              SFSSystemCollection(.human)
    public static let nature =             SFSSystemCollection(.nature)
    public static let editing =            SFSSystemCollection(.editing)
    public static let text_formatting =    SFSSystemCollection(.text_formatting)
    public static let media =              SFSSystemCollection(.media)
    public static let keyboard =           SFSSystemCollection(.keyboard)
    public static let commerce =           SFSSystemCollection(.commerce)
    public static let time =               SFSSystemCollection(.time)
    public static let health =             SFSSystemCollection(.health)
    public static let shapes =             SFSSystemCollection(.shapes)
    public static let arrows =             SFSSystemCollection(.arrows)
    public static let indices =            SFSSystemCollection(.indices)
    public static let math =               SFSSystemCollection(.math)
    
    
    let category: SFSCategory
    
    private init(_ category: SFSCategory) {
        self.category = category
        switch category {
        case .allSymbols: super.init(title: "All", defaultSymbol: .square_grid_2x2, symbols: SFSymbol.allCases)  // , id: category.id)
        case .whats_new: super.init(title: "What's New", defaultSymbol: .sparkles, symbols: SFSymbol.WhatsNew)  // , id: category.id)
        case .multicolor: super.init(title: "Multicolor", defaultSymbol: .sparkles, symbols: SFSymbol.Multicolor)  // , id: category.id)
        case .communication: super.init(title: "Communication", defaultSymbol: .message, symbols: SFSymbol.Communication)  // , id: category.id)
        case .weather: super.init(title: "Weather", defaultSymbol: .cloud_sun, symbols: SFSymbol.Weather)  // , id: category.id)
        case .objects_and_tools: super.init(title: "Objects & Tools", defaultSymbol: .folder, symbols: SFSymbol.ObjectsAndTools)  // , id: category.id)
        case .devices: super.init(title: "Devices", defaultSymbol: .desktopcomputer, symbols: SFSymbol.Devices)  // , id: category.id)
        case .gaming: super.init(title: "Gaming", defaultSymbol: .gamecontroller, symbols: SFSymbol.Gaming)  // , id: category.id)
        case .connectivity: super.init(title: "Connectivity", defaultSymbol: .antenna_radiowaves_left_and_right, symbols: SFSymbol.Connectivity)  // , id: category.id)
        case .transportation: super.init(title: "Transportation", defaultSymbol: .car_fill, symbols: SFSymbol.Transportation)  // , id: category.id)
        case .human: super.init(title: "Human", defaultSymbol: .person_crop_circle, symbols: SFSymbol.Human)  // , id: category.id)
        case .nature: super.init(title: "Nature", defaultSymbol: .leaf, symbols: SFSymbol.Nature)  // , id: category.id)
        case .editing: super.init(title: "Editing", defaultSymbol: .slider_horizontal_3, symbols: SFSymbol.Editing)  // , id: category.id)
        case .text_formatting: super.init(title: "Text Formatting", defaultSymbol: .textformat, symbols: SFSymbol.TextFormatting)  // , id: category.id)
        case .media: super.init(title: "Media", defaultSymbol: .playpause, symbols: SFSymbol.Media)  // , id: category.id)
        case .keyboard: super.init(title: "Keyboard", defaultSymbol: .keyboard, symbols: SFSymbol.Keyboard)  // , id: category.id)
        case .commerce: super.init(title: "Commerce", defaultSymbol: .cart, symbols: SFSymbol.Commerce)  // , id: category.id)
        case .time: super.init(title: "Time", defaultSymbol: .clock, symbols: SFSymbol.Time)  // , id: category.id)
        case .health: super.init(title: "Health", defaultSymbol: .staroflife_fill, symbols: SFSymbol.Health)  // , id: category.id)
        case .shapes: super.init(title: "Shapes", defaultSymbol: .square_on_circle, symbols: SFSymbol.Shapes)  // , id: category.id)
        case .arrows: super.init(title: "Arrows", defaultSymbol: .arrow_right, symbols: SFSymbol.Arrows)  // , id: category.id)
        case .indices: super.init(title: "Indices", defaultSymbol: .a_circle, symbols: SFSymbol.Indices)  // , id: category.id)
        case .math: super.init(title: "Math", defaultSymbol: .function, symbols: SFSymbol.Math)  // , id: category.id)
        }
    }
    
}
