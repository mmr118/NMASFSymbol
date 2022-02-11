//
//  Persistence.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/10/22.
//

import CoreData

struct PersistenceController {
    
    static let shared = PersistenceController()
    
    let container: NSPersistentContainer
    
    var mainContext: NSManagedObjectContext { container.viewContext }
    
    init(inMemory: Bool = false) {
        container = NSPersistentContainer(name: "NMASFSymbolDemo")
        if inMemory {
            container.persistentStoreDescriptions.first!.url = URL(fileURLWithPath: "/dev/null")
        }
        container.viewContext.automaticallyMergesChangesFromParent = true
        container.loadPersistentStores { (_, error) in
            if let error = error as NSError? { fatalError("Unresolved error \(error), \(error.userInfo)") }
        }
    }
    
    public func saveMainContext(child childContext: NSManagedObjectContext? = nil, function: StaticString = #function, line: UInt = #line) {
        
        if let childContext = childContext, childContext != mainContext {
            llog.msg("Child context sent")
            saveContext(childContext, function: function, line: line)
        }
        
        saveContext(mainContext, function: function, line: line)
        
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
