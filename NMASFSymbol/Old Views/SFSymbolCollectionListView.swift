//
//  SFSymbolCollectionListView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

/*
import SwiftUI
import CoreData
import NMASFSymbol

struct SFSymbolCollectionListView: View {
    
    @Environment(\.managedObjectContext) private var viewContext
    
    var title: String = "NMASFSymbol Demo"
    
    @State private var isPresenting: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                // Persisted Collections
                if !SFSCollection.loadedCache.isEmpty {

                    Section("Custom Collections") {
                        let persistedCollections = SFSCollection.loadedCache.elements()
                        ForEach(persistedCollections) { collection in
                            GridViewNavigationLink(collection: collection)
                        }
                        
                    }
                    
                }
                
                // Cached Collections
                if !SFSCollection.cache.isEmpty {
                    
                    Section {
                        let cachedCollections = SFSCollection.cachedCollections.map { $0 }
                        ForEach(cachedCollections) { collection in
                            GridViewNavigationLink(collection: collection)
                        }
                    } header: {
                        Text("Cached Collections")
                    } footer: {
                        Text("These will delete when the app shuts down, toggle \"Save\" in the collection to store.")
                    }
                }
                
                // System Collections
                Section("Categories") {
                     
                    let collections = SFSSystemCollection.allCollections.map { $0 }
                    ForEach(collections) { collection in
                        GridViewNavigationLink(collection: collection)
                    }
                    
                }
                .navigationTitle(title)
                .sheet(isPresented: $isPresenting) {
                    // handle dismiss
                    EditSFSCollectionView(model: SFSCollectionModel())
                        .environment(\.managedObjectContext, viewContext)
                }
                .toolbar {
                    ToolbarItem(placement: .confirmationAction) {
                        Button {
                            isPresenting = true
                        } label: {
                            Image(sfSymbol: .plus)
                        }
                        
                    }
                }
                
            }
            
        }
        
    }
    
}

struct SFSymbolCollectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolCollectionListView().preferredColorScheme(.dark).environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
*/
