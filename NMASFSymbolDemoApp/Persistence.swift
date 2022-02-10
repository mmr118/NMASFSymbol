//
//  Persistence.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import CoreData
import NMASFSymbol

struct PersistenceController {

    static let shared = PersistenceController()

    let container: NSPersistentContainer
    
    var mainContext: NSManagedObjectContext { container.viewContext }

    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "NMASFSymbolDemoApp")
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
    
    public func saveMainContext(child childContext: NSManagedObjectContext? = nil, function: StaticString = #function, line: UInt = #line) {
        
        if let childContext = childContext {
            assert(childContext != mainContext)
            
            if childContext != mainContext {
                
                llog.msg("Child context sent")
                saveContext(childContext, function: function, line: line)
            }
            saveContext(mainContext, function: function, line: line)
        } else {
            saveContext(mainContext, function: function, line: line)
        }
        
    }
    
    public static func save(_ context: NSManagedObjectContext) {
        if context.hasChanges {
            
            context.perform {
                
                do {
                    try context.save()
                    
                } catch let nserror as NSError {
                    
                    llog.stop(nserror.userInfo.description)
                    
                }
                
            }
        } else {
            llog.warn("Static Attempt to save context with no changes--No save.")
        }
    }
    
}

extension PersistenceController {
    
    // MARK: - Private
    private func saveContext(_ context: NSManagedObjectContext, function: StaticString = #function, line: UInt = #line) {
        
        let header = (context == mainContext) ? "Ⓜ️" : "🔸"
        
        if context.hasChanges {
            
            context.perform {
                
                do {
                    
                    try context.save()
                    llog.suc("\(header) Context was saved")
                    
                } catch {
                    fatalError(error.localizedDescription)
                }
                
            }
            
        } else {
            
            llog.warn("\(header) Attempted to save context with no changes--No save.")
            
        }
    }
    
}
