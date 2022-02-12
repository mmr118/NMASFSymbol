//
//  Persistence.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import CoreData
import NMASFSymbol

struct PersistenceController {
    
    static let shared = PersistenceController()
    
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
        container.loadPersistentStores{ (_, error) in
            if let error = error as NSError? { fatalError("Unresolved error \(error), \(error.userInfo)") }
        }
    }
}

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


extension PersistenceController {
    
    func saveMainContext(_ childContext: NSManagedObjectContext? = nil) {
        
        
        if let childContext = childContext, childContext != mainContext {
            saveContext(childContext, "🚼")
            
        }
        
        saveContext(mainContext, "🟣")
        
    }
    
    private func saveContext(_ context: NSManagedObjectContext, _ emoji: String) {
        
        context.perform {
        
            llog.msg("\(emoji) Attempting to save...", function: #function, line: #line)
            
            if context.hasChanges {
                
                do {
                    
                    try context.save()
                    llog.suc("\(emoji) Context saved")
                    
                } catch let nserror as NSError {
                    
                    fatalError(nserror.userInfo.description)
                    
                }
                
            } else {
                
                llog.warn("\(emoji) Attempted to save with no changes")
                
            }
            
        }
        
    }
        
}
