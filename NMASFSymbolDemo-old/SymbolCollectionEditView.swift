//
//  SymbolCollectionEditView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//

import SwiftUI
import CoreData
import NMASFSymbol


struct SymbolCollectionEditView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    let collection: SymbolCollectionMO
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SymbolCollectionEditView_Previews: PreviewProvider {
    static var previews: some View {
        let context = PersistenceController.preview.mainContext
        let collection = PersistenceController.previewCollectionMO(context)

        SymbolCollectionEditView(collection: collection)
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)

    }
}
