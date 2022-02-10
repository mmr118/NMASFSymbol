//
//  Persistence+Perview.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

import CoreData
import NMASFSymbol


extension PersistenceController {
    
    static var preview: PersistenceController = {
        let result = PersistenceController(inMemory: true)
        loadMockData(result.container.viewContext)
        return result
    }()

    static func clearStorage(_ context: NSManagedObjectContext) {
        do {
            let datas = try context.fetch(SymbolCollectionMO.fetchRequest())
            for data in datas {
                context.delete(data)
            }
            
            try context.save()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
    
    static func loadMockData(_ context: NSManagedObjectContext) {
//        let titleSymbolsDict: [String: [SFSymbol]] = [
//            "trash": SFSymbol.allCases.filter { $0.systemName.contains("trash") },
//            "numbers": SFSymbol.allCases.filter { ($0.selfString[$0.selfString.startIndex] == "_") && (Int(String($0.systemName[$0.selfString.index(after: $0.selfString.startIndex)])) != nil) },
//            "Circle Filled": SFSymbol.CircleFillSymbols
//        ]
//        
//        for (title, symbols) in titleSymbolsDict {
//            let data = SymbolCollectionMO(context: context)
//            data.name = title
//            data.infoSymbolRawValue = symbols.randomElement()?.systemName ?? SFSymbol.questionmark_circle.systemName
//            data.symbolsRawValues = Set(symbols.map { $0.rawValue })
//        }
//                
//        do {
//            try context.save()
//        } catch {
//            // Replace this implementation with code to handle the error appropriately.
//            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
//            let nsError = error as NSError
//            fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
//        }
        
    }
    
}

