//
//  Persistence.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//

import CoreData
import NMASFSymbol

struct PersistenceController {
    static let shared = PersistenceController()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        previewCollectionMO(viewContext)
        return result
    }()

    let container: NSPersistentContainer

    var mainContext: NSManagedObjectContext { container.viewContext }
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "NMASFSymbolDemo")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.

                /*
                Typical reasons for an error here include:
                * The parent directory does not exist, cannot be created, or disallows writing.
                * The persistent store is not accessible, due to permissions or data protection when the device is locked.
                * The device is out of space.
                * The store could not be migrated to the current model version.
                Check the error message to determine what the actual problem was.
                */
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
    }
}

extension PersistenceController {
    
    @discardableResult
    static func previewCollectionMO(_ context: NSManagedObjectContext) -> SymbolCollectionMO {
        let collectionMO = SymbolCollectionMO(context: context)
        collectionMO.dateCreated = Date()
        collectionMO.title = "Collection MO"
        collectionMO.infoSymbol = SFSymbol.hammer
        collectionMO.symbolsRVs = Set(SFSymbol.allCases.filter { $0.systemName.contains("hammer") }.map { $0.rawValue })

        do {
            try context.save()
        } catch let nserror as NSError {
            fatalError(nserror.userInfo.description)
        }
        
        return collectionMO
    }
}
