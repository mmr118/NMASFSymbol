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
        loadPreviewData(result)
        return result
    }()
    
    static func previewSymbolCollectionMO() -> SymbolCollectionMO {
        let context = PersistenceController.preview.mainContext
        return SymbolCollectionMO(context, title: "Preview Collection", infoSymbol: SFSymbol.allCases.randomElement()!, symbols: Set(Constants.circleFillSymbols()))
    }
    
    static func loadPreviewData(_ controller: PersistenceController) {
//        let _ = SymbolCollectionMO(controller.mainContext, title: "Circle Fill", infoSymbol: .folder_circle_fill, symbols: Set(Constants.circleFillSymbols()))
//        let _ = SymbolCollectionMO(controller.mainContext, title: "Checkmark", infoSymbol: .checkmark_seal_fill, symbols: Set(Constants.checkmarkSymbols()))
//        let _ = SymbolCollectionMO(context: controller.mainContext)
//        controller.saveMainContext()

        
        
//        let circleFillCollection = SymbolCollectionMO(context: context)
//        circleFillCollection.dateCreated = Date()
//        circleFillCollection.title = "Circle Fill"
//        circleFillCollection.infoSymbolRawValue = SFSymbol.folder_circle_fill.rawValue
//        circleFillCollection.symbolsRawValues = Set(Constants.circleFillSymbols().map { $0.rawValue })
        

//        let checkmarkCollection = SymbolCollectionMO(context: context)
//        checkmarkCollection.dateCreated = Date()
//        checkmarkCollection.title = "Checkmark"
//        checkmarkCollection.infoSymbolRawValue = SFSymbol.checkmark_seal_fill.rawValue
//        checkmarkCollection.symbolsRawValues = Set(Constants.checkmarkSymbols().map { $0.rawValue })
        
//        let emptyCollection = SymbolCollectionMO(context: context)
//        emptyCollection.dateCreated = Date()
//        emptyCollection.symbolsRawValues = Set()
        
//        controller.saveMainContext()
        
//        do {
//
//            try context.save()
//
//        } catch let nserror as NSError {
//            fatalError(nserror.userInfo.description)
//        }
        
    }
    
}
