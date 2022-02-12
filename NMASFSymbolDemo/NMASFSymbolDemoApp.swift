//
//  NMASFSymbolDemoApp.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

@main
struct NMASFSymbolDemoApp: App {
    
    let persistenceController: PersistenceController = {
        let result = PersistenceController.shared
        loadTestDataIfNeeded(result)
        SetupManager.shared.set(true, for: .clearStorageOnLaunch)
        return result
    }()

    var body: some Scene {
        WindowGroup {
            SymbolCollectionListView()
                .environment(\.managedObjectContext, persistenceController.mainContext)
        }
    }
    
}

struct SetupManager {
    
    enum Option: String {
        case didLoadTestData
        case clearStorageOnLaunch
        var key: String { return rawValue }
    }
    
    static let shared = SetupManager()
    
    let defaults = UserDefaults.standard
    
    private init() { }
    
    func set(_ value: Bool, for option: Option) {
        defaults.set(value, forKey: option.key)
    }
    
    func set(_ value: Bool, for options: [Option]) {
        options.forEach { set(value, for: $0) }
    }
    
    func value(for option: Option) -> Bool {
        return defaults.bool(forKey: option.key)
    }
    
}


extension NMASFSymbolDemoApp {
        
    static func loadTestDataIfNeeded(_ controller: PersistenceController) {
        guard SetupManager.shared.value(for: .didLoadTestData) == false else { return }
        
        let _ = SymbolCollectionMO(controller.mainContext, title: "Circle Fill", infoSymbol: .folder_circle_fill, symbols: Set(Constants.circleFillSymbols()))
        controller.saveMainContext()
        
        SetupManager.shared.set(true, for: .didLoadTestData)
        
    }
    
    static func clearStorageInNeeded(_ controller: PersistenceController) {
        guard SetupManager.shared.value(for: .clearStorageOnLaunch) == true else { return }
        
        do {
            
            let objects = try controller.mainContext.fetch(SymbolCollectionMO.fetchRequest())
            
            for object in objects {
                controller.mainContext.delete(object)
            }
            
            try controller.mainContext.save()
            
        } catch {
            fatalError(error.localizedDescription)
        }

    }

    
}
