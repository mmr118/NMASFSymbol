//
//  SFSSystemCategory.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

@frozen public enum SFSSystemCategory: Int, CaseIterable, Identifiable {
    
    case allSymbols, whats_new, multicolor, communication, weather, objects_and_tools, devices, gaming, connectivity, transportation, human, nature, editing, text_formatting, media, keyboard, commerce, time, health, shapes, arrows, indices, math
    
    public var id: Int { rawValue }
    
    private var caseString: String { String(describing: self.self) }
    
    public var title: String {
        switch self {
        case .whats_new: return "What's New"
        case .objects_and_tools: return "Objects And Tools"
        case .text_formatting: return "Text Formatting"
        default: return caseString.capitalized
        }
    }
    
    public func collection() -> SFSymbolCollection {
        switch self {
        case .allSymbols: return SFSystemSymbolCollection.allSymbols
        case .whats_new: return SFSystemSymbolCollection.whats_new
        case .multicolor: return SFSystemSymbolCollection.multicolor
        case .communication: return SFSystemSymbolCollection.communication
        case .weather: return SFSystemSymbolCollection.weather
        case .objects_and_tools: return SFSystemSymbolCollection.objects_and_tools
        case .devices: return SFSystemSymbolCollection.devices
        case .gaming: return SFSystemSymbolCollection.gaming
        case .connectivity: return SFSystemSymbolCollection.connectivity
        case .transportation: return SFSystemSymbolCollection.transportation
        case .human: return SFSystemSymbolCollection.human
        case .nature: return SFSystemSymbolCollection.nature
        case .editing: return SFSystemSymbolCollection.editing
        case .text_formatting: return SFSystemSymbolCollection.text_formatting
        case .media: return SFSystemSymbolCollection.media
        case .keyboard: return SFSystemSymbolCollection.keyboard
        case .commerce: return SFSystemSymbolCollection.commerce
        case .time: return SFSystemSymbolCollection.time
        case .health: return SFSystemSymbolCollection.health
        case .shapes: return SFSystemSymbolCollection.shapes
        case .arrows: return SFSystemSymbolCollection.arrows
        case .indices: return SFSystemSymbolCollection.indices
        case .math: return SFSystemSymbolCollection.math
        }
    }
    
}
