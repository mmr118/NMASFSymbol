//
//  SymbolCollectionMO+CoreDataClass.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//
//

import Foundation
import CoreData
import NMASFSymbol

@objc(SymbolCollectionMO)
public class SymbolCollectionMO: NSManagedObject {
    
    override public init(entity: NSEntityDescription, insertInto context: NSManagedObjectContext?) {
        super.init(entity: entity, insertInto: context)
        self.uuid = UUID()
        self.dateCreated = Date()
        self.title = Default.collectionTitle
        self.infoSymbolRawValue = Default.infoSymbol.rawValue
        self.symbolsRawValues = Set()
    }
    
    init(context: NSManagedObjectContext) {
        super.init(entity: Self.entity(), insertInto: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = Default.collectionTitle
        self.infoSymbolRawValue = Default.infoSymbol.rawValue
        self.symbolsRawValues = Set()
    }
        
    convenience init(_ context: NSManagedObjectContext, title: String) {
        self.init(context: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = Default.collectionTitle
        self.infoSymbolRawValue = infoSymbol.rawValue
        self.symbolsRawValues = Set()
    }
    
    convenience init(_ context: NSManagedObjectContext, title: String, infoSymbol: SFSymbol) {
        self.init(context: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = title
        self.infoSymbolRawValue = infoSymbol.rawValue
        self.symbolsRawValues = Set()
    }
    
    convenience init<S: Sequence>(_ context: NSManagedObjectContext, title: String, symbols: S) where S.Element == SFSymbol {
        self.init(context: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = title
        self.infoSymbolRawValue = Default.infoSymbol.rawValue
        self.symbolsRawValues = Set(symbols.map { $0.rawValue })
    }

    convenience init<S: Sequence>(_ context: NSManagedObjectContext, title: String, infoSymbol: SFSymbol, symbols: S) where S.Element == SFSymbol {
        self.init(context: context)
        self.dateCreated = Date()
        self.uuid = UUID()
        self.title = title
        self.infoSymbolRawValue = infoSymbol.rawValue
        self.symbolsRawValues = Set(symbols.map { $0.rawValue })
    }

}
