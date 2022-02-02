//
//  Persistence.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import CoreData
import NMASFSymbol

extension RawRepresentable {
    var selfString: String { String(describing: self.self) }
}

struct PersistenceController {

//    static let shared = PersistenceController()
    static let shared: PersistenceController = {
        let result = PersistenceController()
//        loadMockData(result.container.viewContext)
        return result
    }()

    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        let viewContext = result.container.viewContext
        loadMockData(viewContext)
        return result
    }()

    let container: NSPersistentContainer

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

    private static func loadMockData(_ context: NSManagedObjectContext) {
        let titleSymbolsDict: [String: [SFSymbol]] = [
            "trash": SFSymbol.allCases.filter { $0.name.contains("trash") },
            "numbers": SFSymbol.allCases.filter { ($0.selfString[$0.selfString.startIndex] == "_") && (Int(String($0.name[$0.selfString.index(after: $0.selfString.startIndex)])) != nil) },
            "Circle Filled": CircleFillSymbols
        ]

        for (title, symbols) in titleSymbolsDict {
            let data = SFSCollectionData(context: context)
            data.title = title
            data.defaultSFSymbolRawValue = symbols.randomElement()?.name ?? SFSymbol.questionmark_circle.name
            data.symbolsRawValues = Set(symbols.map { $0.rawValue })
        }

        print()

        do {
            try context.save()
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nsError = error as NSError
            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
        }

    }
}
