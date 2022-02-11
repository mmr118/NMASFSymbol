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
//        assert(isPreview)
        let context = PersistenceController.preview.mainContext
        let collection = SymbolCollectionMO(context: context)
        collection.dateCreated = Date()
        collection.title = "Preview Collection"
        collection.infoSymbolRawValue = SFSymbol.allCases.randomElement()!.rawValue
        collection.symbolsRawValues =   Set(Constants.circleFillSymbols().map { $0.rawValue })
        return collection
    }
    
    static func previewSymbolCollectionMONonOpt() -> SymbolCollectionMONonOpt {
//        assert(isPreview)
        let collection = SymbolCollectionMONonOpt(PersistenceController.preview.container.viewContext, title: "Preview Collection", infoSymbol: .checkmark_seal_fill, symbols: Constants.checkmarkSymbols())
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
        
        //--------TEMP----------
        let _ = SymbolCollectionMONonOpt(context, title: "Circle Fill Non Opt", infoSymbol: .folder_circle_fill, symbols: Constants.circleFillSymbols())
        let _ = SymbolCollectionMONonOpt(context, title: "Checkmark Non Opt", infoSymbol: .checkmark_seal_fill, symbols: Constants.checkmarkSymbols())
        
        let emptyCollectionNonOpt = SymbolCollectionMONonOpt(context: context)
        emptyCollectionNonOpt.dateCreated = Date()
        emptyCollectionNonOpt.symbolsRawValues = Set()

        //--------TEMP----------

        do {
            
            try context.save()
            
        } catch let nserror as NSError {
            fatalError(nserror.userInfo.description)
        }
        
    }
    
}


extension SymbolCollectionMO {
    
    
    
}
        
        
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
//
//    }
//
//}
//



/*

@objc(SymbolCollectionMONonOpt)
public class SymbolCollectionMONonOpt: NSManagedObject {
    
    convenience init<S: Sequence>(_ context: NSManagedObjectContext, title: String, infoSymbol: SFSymbol? = nil, symbols: S) where S.Element == SFSymbol {
        self.init(context: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = title
        self.infoSymbolRawValue = infoSymbol?.rawValue ?? Default.infoSymbol.rawValue
        self.symbolsRawValues = Set(symbols.map { $0.rawValue })
    }
    
}



extension NSManagedObjectContext {
    
    func newCollection<S: Sequence>(_ title: String, infoSymbol: SFSymbol? = nil, symbols: S) -> SymbolCollectionMO where S.Element == SFSymbol {
        let collection = SymbolCollectionMO(context: self)
        collection.title = title
        collection.infoSymbolRawValue = infoSymbol?.rawValue
        collection.symbolsRawValues = Set(symbols.map { $0.rawValue })
        return collection
    }
    
    func newCollectionNonOpt<S: Sequence>(_ title: String, infoSymbol: SFSymbol? = nil, symbols: S) -> SymbolCollectionMONonOpt where S.Element == SFSymbol {
        let collection = SymbolCollectionMONonOpt(context: self)
        collection.title = title
        collection.infoSymbol = infoSymbol ?? Default.infoSymbol
        collection.symbolSet = Set(symbols)
        return collection
    }
    
}



*/



/*


extension SymbolCollectionMONonOpt {
    
    @nonobjc public class func fetchRequest() -> NSFetchRequest<SymbolCollectionMONonOpt> {
        return NSFetchRequest<SymbolCollectionMONonOpt>(entityName: "SymbolCollectionMONonOpt")
    }
    
    @NSManaged public var title: String
    @NSManaged public var dateCreated: Date
    @NSManaged public var infoSymbolRawValue: String
    @NSManaged public var symbolsRawValues: Set<String>
    
}

extension SymbolCollectionMONonOpt : Identifiable {
    
    public var infoSymbol: SFSymbol {
        get { SFSymbol(name: infoSymbolRawValue) ?? Default.infoSymbol }
        set { self.infoSymbolRawValue = newValue.rawValue }
    }
    
    var symbolSet: Set<SFSymbol> {
        get { Set(symbolsRawValues.compactMap { SFSymbol(name: $0) }) }
        set { self.symbolsRawValues =  Set(newValue.map { $0.rawValue }) }
    }
    
}


extension SymbolCollectionMO: SFMutableSymbolCollectionProtocol {
    
    public var uuid: UUID {
        if let value = self.iUUID {
            return value
        } else {
            let value = UUID()
            self.iUUID = value
            return value
        }
    }
    
    public var title: String {
        get { name ?? Default.collectionTitle + " MO" }
        set { name = newValue }
    }
    
    public var isEmpty: Bool { symbols().isEmpty }
    
    public var count: Int { symbols().count }
    
    public var infoSymbol: SFSymbol { _symbol(infoSymbolRawValue) }
    
    public func symbols() -> [SFSymbol] {
        guard let symbolsRawValues = symbolsRawValues else { return [] }
        return symbolsRawValues.compactMap { SFSymbol(name: $0) }
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        return symbolsRawValues?.contains(symbol.systemName) ?? false
    }
    
    public func contains<S>(allOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        let symbolNames = Set(symbols.map { $0.systemName })
        return symbolsRawValues?.isSuperset(of: symbolNames) ?? false
    }
    
    public func contains<S>(anyOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        let symbolNames = Set(symbols.map { $0.systemName })
        return symbolsRawValues?.isDisjoint(with: symbolNames) ?? false
    }
    
    public func contains<S>(noneOf symbols: S) -> Bool where S : Sequence, S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }
    
    private func _symbol(_ name: String?) -> SFSymbol {
        guard let name = name else { return Default.infoSymbol }
        return SFSymbol(name: name) ?? Default.infoSymbol
    }
    
    
    // MARK: - Mutable conformance
    public func add(_ symbol: SFSymbol) -> Bool {
        self.symbolsRawValues?.insert(symbol.systemName).inserted ?? false
    }
    
    public func add<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToAdd = symbols.map { $0.systemName }
        self.symbolsRawValues?.formUnion(rawValuesToAdd)
    }
    
    public func remove(_ symbol: SFSymbol) -> SFSymbol? {
        guard let removedRawValue = self.symbolsRawValues?.remove(symbol.systemName) else { return nil }
        return SFSymbol(name: removedRawValue)
    }
    
    public func remove<S>(_ symbols: S) where S : Sequence, S.Element == SFSymbol {
        let rawValuesToRemove = symbols.map { $0.systemName }
        self.symbolsRawValues?.subtract(rawValuesToRemove)
    }
    
    
}


extension SymbolCollectionMONonOpt: SFSymbolCollectionProtocol {
    public var uuid: UUID {
        <#code#>
    }
    
    
    public var isEmpty: Bool { symbolsRawValues.isEmpty }
    
    public var count: Int { symbolsRawValues.count }
    
    public func symbols() -> [SFSymbol] {
        Array(symbolSet)
    }
    
    public func contains(_ symbol: SFSymbol) -> Bool {
        symbolSet.contains(symbol)
    }
    
    public func contains<S: Sequence>(allOf symbols: S) -> Bool where S.Element == SFSymbol {
        return symbolSet.isSuperset(of: symbols)
    }
    
    public func contains<S: Sequence>(anyOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !symbolSet.isDisjoint(with: symbols)
    }
    
    public func contains<S: Sequence>(noneOf symbols: S) -> Bool where S.Element == SFSymbol {
        return !contains(anyOf: symbols)
    }
    
}

 
 
 */
