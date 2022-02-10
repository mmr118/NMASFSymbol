//
//  NMASFSymbolDemoAppApp.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import NMASFSymbol
import CoreData

@main
struct NMASFSymbolDemoAppApp: App {
    
    let persistenceController: PersistenceController = {
        let result = PersistenceController()
        loadAndCacheData(result.container.viewContext)
        return result
        
    }()
    
    static var cachedCollectionToObjectId = [SFSCollection: NSManagedObjectID]()
    
    var body: some Scene {
        WindowGroup {
            SFSymbolCollectionListView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
    
    private static func loadAndCacheData(_ context: NSManagedObjectContext) {
        var datas = [SFSCollectionData]()
        
        context.perform {
            
            do {
                datas = try context.fetch(SFSCollectionData.fetchRequest())
            } catch let nserror as NSError {
                fatalError(nserror.userInfo.description)
            }
            
        }
        
        let collections = datas.map(SFSCollection.init)
        SFSCollection.store(collections)
        
        
        assert(datas.count == SFSCollection.cache.count)
    }
}
