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
        
//        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    
                    ForEach(filteredSymbols, id: \.self) { symbol in
                        SFSymbolView(sfSymbol: symbol, isSelected: false) // selectionModel.isExistingOrSelected(symbol)).environment(\.editMode, $editMode)
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

//        }
    }
    
    private func handleSymbolViewTap(_ selectedSymbol: SFSymbol) {
//        selectionModel.handleSelection(selectedSymbol)
    }
    
}

struct SymbolGridView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        let previewCollectionMO = PersistenceController.previewSymbolCollectionMO(PersistenceController.preview.mainContext)
        SymbolGridView(collection: previewCollectionMO)
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)

    }
}

//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)], animation: .default)
//    private var collectionMOs: FetchedResults<SymbolCollectionMO>
//
//    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMONonOpt.dateCreated, ascending: true)], animation: .default)
//    private var collectionMONonOpts: FetchedResults<SymbolCollectionMONonOpt>


struct SFSymbolView: View {
    
    @Environment(\.editMode) private var editMode
    
    var sfSymbol: SFSymbol
    
    @State var isSelected: Bool
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            GroupBox {
                
                Image(systemName: sfSymbol.systemName)
                    .foregroundColor(.pealWIU)
                    .font(.system(size: 35))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .center)
                    .cornerRadius(10)
                    .padding (0)
                
                Text(sfSymbol.systemName)
                    .font(.system(size: 12))
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: .infinity, alignment: .center)
            }
            
            if editMode?.wrappedValue == .active {
                HStack(alignment: .top, spacing: 0) {
                    Spacer()
                    selectionImage()
                        .font(.system(size: 14))
                        .foregroundColor(Color(UIColor.systemBlue))
                }
                .frame(alignment: .trailing)
                .padding(10)
                
            }
            
        }
        //        .disabled(editMode?.wrappedValue.isEditing ?? false)
        .onTapGesture {
            isSelected = !isSelected
        }
        
    }
    
    private func selectionImage() -> Image {
        if $isSelected.wrappedValue {
            return Image(sfSymbol: .checkmark_circle_fill)
        } else {
            return Image(sfSymbol: .circle)
        }
        
    }
}
