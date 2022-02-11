//
//  SFSymbolCollectionGridView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//


/*
import SwiftUI
import CoreData
import NMASFSymbol


struct SFSymbolCollectionGridView<T: SFSCollectionProtocol>: View {
    
    @State private var searchText = ""
    @State var editMode: EditMode = .inactive
    @State var collection: T
    var selectionModel: SFSymbolSelectionViewModel<T>
    
    private let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }
    
    private var filteredSymbols: [SFSymbol] { searchText.isEmpty ? collection.symbols() : collection.symbols().filter { $0.systemName.contains(searchText) } }
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    
                    ForEach(filteredSymbols, id: \.self) { symbol in
                        
                        SFSymbolView(sfSymbol: symbol, isSelected: selectionModel.isExistingOrSelected(symbol)).environment(\.editMode, $editMode)
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
        
    }
    
    private func handleSymbolViewTap(_ selectedSymbol: SFSymbol) {
        selectionModel.handleSelection(selectedSymbol)
    }
    
}


struct SFSymbolCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        
        let collection = SFSSystemCollection.devices
        let modelCollection = SFSCollection(title: "CircleFill", defaultSymbol: .circle_fill, symbols: SFSymbol.CircleFillSymbols)
        let selectionModel = SFSymbolSelectionViewModel(collection: modelCollection)
        let comboCollection = SFSCollection(title: "Combo", defaultSymbol: .circle_fill, symbols: (collection.symbols() + modelCollection.symbols()).shuffled())
        Group {
            SFSymbolCollectionGridView(collection: comboCollection, selectionModel: selectionModel)
            
            SFSymbolCollectionGridView(collection: comboCollection, selectionModel: selectionModel)
                .preferredColorScheme(.dark)
        }
    }
}

*/
