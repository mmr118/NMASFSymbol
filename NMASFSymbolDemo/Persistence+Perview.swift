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
        let viewContext = result.container.viewContext
        loadPreviewData(viewContext)
        return result
    }()
    
    static func previewSymbolCollectionMO() -> SymbolCollectionMO {
        let context = PersistenceController.preview.mainContext
        let collection = SymbolCollectionMO(context: context)
        collection.dateCreated = Date()
        collection.title = "Preview Collection"
        collection.infoSymbolRawValue = SFSymbol.allCases.randomElement()!.rawValue
        collection.symbolsRawValues =   Set(Constants.circleFillSymbols().map { $0.rawValue })
        return collection
    }
    
    static func loadPreviewData(_ context: NSManagedObjectContext) {
        let circleFillCollection = SymbolCollectionMO(context: context)
        circleFillCollection.dateCreated = Date()
        circleFillCollection.title = "Circle Fill"
        circleFillCollection.infoSymbolRawValue = SFSymbol.folder_circle_fill.rawValue
        circleFillCollection.symbolsRawValues = Set(Constants.circleFillSymbols().map { $0.rawValue })
        
        let checkmarkCollection = SymbolCollectionMO(context: context)
        checkmarkCollection.dateCreated = Date()
        checkmarkCollection.title = "Checkmark"
        checkmarkCollection.infoSymbolRawValue = SFSymbol.checkmark_seal_fill.rawValue
        checkmarkCollection.symbolsRawValues = Set(Constants.checkmarkSymbols().map { $0.rawValue })
        
        let emptyCollection = SymbolCollectionMO(context: context)
        emptyCollection.dateCreated = Date()
        emptyCollection.symbolsRawValues = Set()
        
        do {
            
            try context.save()
            
        } catch let nserror as NSError {
            fatalError(nserror.userInfo.description)
        }
        
    }
    
}
