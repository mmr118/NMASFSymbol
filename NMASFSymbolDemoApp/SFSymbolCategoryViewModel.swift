//
//  SFSymbolCategoryViewModel.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import CoreData
import Foundation
import NMASFSymbol

class SFSymbolCustomCategoryViewModel: ObservableObject {

    @Published var categories = [SFSCollection]()

    init() {

        do {
            let results = try PersistenceController.shared.container.viewContext.fetch(SFSCollectionData.fetchRequest())
            for _ in results {
//                let category = try SFSCollection(data: data)
//                categories.append(category)
            }

        } catch {
            fatalError()
        }

    }


    func createCategory(displayName: String, defaultSymbol: SFSymbol, symbols: [SFSymbol]) {
//        let category = CustomCategory(displayName: displayName, defaultSymbol: defaultSymbol, symbols: symbols)
//        let data = CustomCategoryData(context: PersistenceController.shared.container.viewContext)
//        data.identifier = Int64(category.id)
//        data.displayName = displayName
//        data.defaultSymbolRawValue = Int64(defaultSymbol.rawValue)
//        data.sfSymbolRawValues = Set(symbols.map { $0.rawValue })
//
//        if PersistenceController.shared.container.viewContext.hasChanges {
//
//            do {
//                try PersistenceController.shared.container.viewContext.save()
//            } catch {
//                fatalError(error.localizedDescription)
//            }
//
//        }
        
    }

}

enum SFSymbolError: Error {
    case nilValue(String)
    case coreDataError(Error)
    case noSymbolForName(String)
    case noSymbolForRawValue(Int)
    var description: String {
        switch self {
        case .nilValue(let valueName):
            return "SFSymbolError.NilValue: \"\(valueName)\" is nil."
        case .coreDataError(let error):
            return "SFSymbolError.CoreDataError: \(error.localizedDescription)"
        case .noSymbolForRawValue(let value):
            return "SFSymbolError.noSymbolForRawValue: No SFSymbol for rawValue \"\(value)\"."
        case .noSymbolForName(let name):
            return "SFSymbolError.noSymbolForName: No SFSymbol for name \"\(name)\"."

        }
    }
}


extension SFSCollection {

//    convenience init(data: SFSCollectionData) throws {
//        guard let displayName = data.displayName else { throw SFSymbolError.nilValue("CustomCategoryData.displayName") }
//        guard let defaultSymbol = SFSymbol(rawValue: Int(data.defaultSFSymbolRawValue)) else { throw SFSymbolError.noSymbolForRawValue(Int(data.defaultSFSymbolRawValue)) }
//
////        guard let defaultSymbolRawValue = data.defaultSymbolRawValue else { throw SFSymbolCustomCategoryError.nilValue("CustomCategoryData.defaultSymbolRawValue") }
//
//        guard let sfSymbolRawValues = data.sfSymbolRawValues else { throw SFSymbolError.nilValue("CustomCategoryData.sfSymbolRawValues") }
//        let symbols = sfSymbolRawValues.map { SFSymbol(rawValue: $0) }.compactMap { $0 }
//        self.init(displayName: displayName, defaultSymbol: defaultSymbol, symbols: symbols)
//    }

}
