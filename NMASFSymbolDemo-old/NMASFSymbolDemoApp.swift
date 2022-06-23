//
//  NMASFSymbolDemoApp.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//

import SwiftUI

@main
struct NMASFSymbolDemoApp: App {
    
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
            
//            SymbolCollectionListView()
//                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}