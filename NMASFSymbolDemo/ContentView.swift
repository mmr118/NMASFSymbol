//
//  ContentView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct ContentView: View {
    @Environment(\.managedObjectContext) private var viewContext
    
    @FetchRequest(
        sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)],
        animation: .default)
    private var collectionMOs: FetchedResults<SymbolCollectionMO>
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section("Custom") {
                    
                    ForEach(collectionMOs) { collection in
                        
                        NavigationLink(destination: Text(collection.title ?? "N/A")) {
                            
                            Label {
                                Text(collection.title ?? "N/A")
                                    .tint(.black)
                            } icon: {
                                let sfSymbol = SFSymbol(name: collection.infoSymbolRawValue ?? SFSymbol.questionmark_app_fill.rawValue) ?? .questionmark_app_fill
                                Image(sfSymbol: sfSymbol)
                                    .font(.system(size: 16))
//                                    .foregroundColor(.tealNMA)
                            }
                            
                        }
                    }
                    .onDelete(perform: deleteItems)
                    
                }
                
                Section("System") {
                    
                    let systemCollections = SFSystemSymbolCollection.allSystemCollections
                    
                    ForEach(systemCollections, id:\.self) { collection in
                        
                        NavigationLink(destination: Text(collection.title)) {
                            Label {
                                Text(collection.title)
                                    .tint(.black)
                            } icon: {
                                Image(sfSymbol: collection.infoSymbol)
                                    .font(.system(size: 16))
//                                    .foregroundColor(.tealNMA)
                            }
                        }
                        
                    }
                }
            }
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
            Text("Select an item")
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
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}