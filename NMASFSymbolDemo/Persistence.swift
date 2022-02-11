//
//  Persistence.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import CoreData
import NMASFSymbol

struct PersistenceController {
    static let shared: PersistenceController  = {
        let result = PersistenceController()
        loadTestData(result.container.viewContext)
        return result
    }()

    let container: NSPersistentContainer
    let isPreview: Bool
    
    var mainContext: NSManagedObjectContext { container.viewContext }
    
    init(inMemory: Bool = false) {
        isPreview = inMemory
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
    
    static let DID_LOAD_TEST_DATA_KEY = "didLoadTestData"
    
    static func loadTestData(_ context: NSManagedObjectContext) {
        
        guard UserDefaults.standard.bool(forKey: DID_LOAD_TEST_DATA_KEY) == false else { return }
        
        let _ : SymbolCollectionMO = {
            let collection = SymbolCollectionMO(context: context)
            collection.dateCreated = Date()
            collection.title = "Preview Collection"
            collection.infoSymbolRawValue = SFSymbol.allCases.randomElement()!.rawValue
            collection.symbolsRawValues =   Set(Constants.circleFillSymbols().map { $0.rawValue })
            return collection
        }()
        
        let _ = SymbolCollectionMONonOpt(context, title: "Preview Collection", infoSymbol: .checkmark_seal_fill, symbols: Constants.checkmarkSymbols())
        
        do {
            try context.save()
            UserDefaults.standard.set(true, forKey: DID_LOAD_TEST_DATA_KEY)
        } catch let nserror as NSError {
            fatalError(nserror.userInfo.description)
        }
    }
    
}
