//
//  SymbolCollectionMONonOpt+CoreDataProperties.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//
//

import Foundation
import CoreData
import NMASFSymbol


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

    var infoSymbol: SFSymbol {
        get { SFSymbol(name: infoSymbolRawValue) ?? Default.infoSymbol }
        set { self.infoSymbolRawValue = newValue.rawValue }
    }
    
    var symbolSet: Set<SFSymbol> {
        get { Set(symbolsRawValues.compactMap { SFSymbol(name: $0) }) }
        set { self.symbolsRawValues =  Set(newValue.map { $0.rawValue }) }
    }
    
}
