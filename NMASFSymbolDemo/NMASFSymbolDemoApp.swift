//
//  NMASFSymbolDemoApp.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/10/22.
//

import SwiftUI

@main
struct NMASFSymbolDemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}


/*
 
 PLAN
 
 - Handle everything as SFSymbolCollectionProtocol
 - Only allow editing on SFMutableSymbolCollectionProtocol
 - MO have dateCreate on them
 
 */
