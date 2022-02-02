//
//  NMASFSymbolDemoAppApp.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import NMASFSymbol

@main
struct NMASFSymbolDemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SFSymbolCollectionListView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
