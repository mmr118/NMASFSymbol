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
    
    var collection: T
    
    private let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }
    private var filteredSymbols: [SFSymbol] { searchText.isEmpty ? collection.symbols() : collection.symbols().filter { $0.systemName.contains(searchText) } }
    
    @State private var searchText = ""
    @State var editMode: EditMode = .inactive

    var body: some View {
                    
            ScrollView {
                
                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    
                    ForEach(filteredSymbols, id: \.self) { symbol in
                        SymbolSelectionView(sfSymbol: symbol, isSelected: false) // selectionModel.isExistingOrSelected(symbol)).environment(\.editMode, $editMode)
                            .environment(\.editMode, $editMode)
                            .onTapGesture {
                                $editMode.animation().wrappedValue = ($editMode.wrappedValue == .inactive) ? .active : .inactive
                            }

                        
                    }
                    
                }
                .searchable(text: $searchText)
                .navigationBarTitle(collection.title, displayMode: .large)
                .navigationBarItems(trailing: EditButton().tint(.accentColor))
                .environment(\.editMode, $editMode)

            }
            .navigationTitle(collection.title)

    }
    
    private func handleSymbolViewTap(_ selectedSymbol: SFSymbol) {
//        selectionModel.handleSelection(selectedSymbol)
    }
    
}

struct SymbolGridView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SymbolGridView(collection: PersistenceController.previewSymbolCollectionMO())
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)

    }
}

//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)], animation: .default)
//    private var collectionMOs: FetchedResults<SymbolCollectionMO>
//
//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMONonOpt.dateCreated, ascending: true)], animation: .default)
//    private var collectionMONonOpts: FetchedResults<SymbolCollectionMONonOpt>
