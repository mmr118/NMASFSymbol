//
//  SymbolCollectionMONonOpt+CoreDataClass.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//
//

import Foundation
import CoreData
import NMASFSymbol

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


