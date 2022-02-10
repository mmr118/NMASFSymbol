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
            let datas = try context.fetch(SFSCollectionData.fetchRequest())
            for data in datas {
                context.delete(data)
            }
            
            try context.save()
        } catch {
            fatalError(error.localizedDescription)
        }
    }
        
//    func circleFillCollectionData() -> SFSCollectionData {
//        var results = [SFSCollectionData]()
//        do {
//            let datas = try mainContext.fetch(SFSCollectionData.fetchRequest())
//            let circleFillDatas = datas.filter { $0.title == "Circle Fill" }
//            assert(circleFillDatas.count <= 1)
//            results = circleFillDatas
//        } catch {
//            fatalError(error.localizedDescription)
//        }
//        
//        if let circleFill = results.first {
//            return circleFill
//        } else {
//            let collectionData = SFSCollectionData(context: mainContext)
//            collectionData.title = "Circle Fill"
//            collectionData.defaultSFSymbolRawValue = SFSymbol.circle.name
//            collectionData.symbolsRawValues = Set(SFSymbol.CircleFillSymbols.map { $0.name })
//            saveMainContext()
//            return collectionData
//        }
//
//    }
    
    static func loadMockData(_ context: NSManagedObjectContext) {
        let titleSymbolsDict: [String: [SFSymbol]] = [
            "trash": SFSymbol.allCases.filter { $0.systemName.contains("trash") },
            "numbers": SFSymbol.allCases.filter { ($0.selfString[$0.selfString.startIndex] == "_") && (Int(String($0.systemName[$0.selfString.index(after: $0.selfString.startIndex)])) != nil) },
            "Circle Filled": SFSymbol.CircleFillSymbols
        ]
        
        for (title, symbols) in titleSymbolsDict {
            let data = SFSCollectionData(context: context)
            data.title = title
            data.defaultSFSymbolRawValue = symbols.randomElement()?.systemName ?? SFSymbol.questionmark_circle.systemName
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

