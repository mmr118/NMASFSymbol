//
//  SymbolGridView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct SymbolGridView<T: SFSymbolCollectionProtocol>: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)], animation: .default)
    private var collectionMOs: FetchedResults<SymbolCollectionMO>
    
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMONonOpt.dateCreated, ascending: true)], animation: .default)
    private var collectionMONonOpts: FetchedResults<SymbolCollectionMONonOpt>

    var collection: T
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SymbolGridView_Previews: PreviewProvider {
    static var previews: some View {
        
        let previewCollectionMO = PersistenceController.previewSymbolCollectionMO()
        SymbolGridView(collection: previewCollectionMO)
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)


        let previewCollectionMONonOpt = PersistenceController.previewSymbolCollectionMONonOpt()
        SymbolGridView(collection: previewCollectionMONonOpt)
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)
            
    }
}
