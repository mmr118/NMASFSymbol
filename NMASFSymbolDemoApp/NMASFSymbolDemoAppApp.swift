//
//  NMASFSymbolDemoAppApp.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI

@main
struct NMASFSymbolDemoAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            CategoryListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
