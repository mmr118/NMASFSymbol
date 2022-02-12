//
//  SymbolCollectionListView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct SymbolCollectionListView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)], animation: .default)
    private var collectionMOs: FetchedResults<SymbolCollectionMO>
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section("Custom") {
                    
                    ForEach(collectionMOs) { collection in
                        
                        NavigationLink(destination: SymbolGridView(collection: collection).environment(\.managedObjectContext, viewContext)) {
                            listLabel(for: collection)
                        }
                        
                    }
                    .onDelete(perform: deleteItems)
                    
                }
                                
                Section("System") {
                    
                    let systemCollections = SFSystemSymbolCollection.allSystemCollections
                    
                    ForEach(systemCollections, id:\.self) { collection in
                        
                        NavigationLink(destination: SymbolGridView(collection: collection)) { // .environment(\.managedObjectContext, viewContext)) {
                            listLabel(for: collection)
                        }
                    }
                }
            }
            .navigationTitle("NMASFSymbol Demo")
//            .sheet(isPresented: $isPresenting) {
//                // handle dismiss
//                EditSFSCollectionView(model: SFSCollectionModel())
//                    .environment(\.managedObjectContext, viewContext)
//            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem {
                    Button(action: addItem) {
                        Label("Add Item", systemImage: "plus")
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            
            Text("Select an item")
        }
    }
    
    @ViewBuilder
    private func listLabel<C: SFSymbolCollectionProtocol>(for collection: C) -> some View {
        Label {
            Text(collection.title)
                .tint(.black)
        } icon: {
            Image(sfSymbol: collection.infoSymbol)
                .font(.system(size: 16))
                .foregroundColor(.tealNMA)
        }
    }
    
    private func addItem() {
        withAnimation {
            
        }
    }
    
    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            offsets.map { collectionMOs[$0] }.forEach(viewContext.delete)
            do {
                try viewContext.save()
            } catch {
                // Replace this implementation with code to handle the error appropriately.
                // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SymbolCollectionListView()
            .environment(\.managedObjectContext, PersistenceController.preview.mainContext)
    }
}
