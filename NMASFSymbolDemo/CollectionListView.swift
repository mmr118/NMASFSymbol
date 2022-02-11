//
//  CollectionListView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/11/22.
//

import SwiftUI
//import NMASFSymbol
import CoreData

struct CollectionListView: View {

    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SymbolCollectionMO.dateCreated, ascending: true)], animation: .default)
    
    private var collectionsMO: FetchedResults<SymbolCollectionMO>

    @State private var isPresenting: Bool = false

    var title: String = "NMASFSymbol Demo"
    
    var body: some View {
        NavigationView {
            
            List {
                
                Section("Custom") {
                    
//                    ForEach(collectionsMO) { collection in
//
//                        collectionLink(collection)
//
//                    }
                    
                }
                
                Section("System") {
                    
//                    ForEach(SFSystemSymbolCollection.allSystemCollections, id: \.self) { collection in
//
//                        collectionLink(collection)
//
//                    }

                }
                
            }
            .navigationTitle(title)
//            .sheet(isPresented: $isPresenting) {
//                // handle dismiss
//                //            EditSFSCollectionView(model: SFSCollectionModel())
//                //                .environment(\.managedObjectContext, viewContext)
//            }
//            .toolbar {
//                ToolbarItem(placement: .confirmationAction) {
//                    Button {
//                        isPresenting = true
//                    } label: {
//                        Image(sfSymbol: .plus)
//                    }
//
//                }
//            }
            
        }
        
    }
        
//    @ViewBuilder
//    private func collectionLink<C>(_ collection: C) -> some View where C: SFSymbolCollectionProtocol {
//
//        NavigationLink(destination: Text(collection.title)) {
//
//            Label {
//                Text(collection.title)
//                    .tint(.black)
//            } icon: {
//                if let image = collection.infoSymbol.image {
//                    image
//                        .font(.system(size: 25))
//                        .foregroundColor(.tealNMA)
//
//                } else {
//
//                }
//            }
//            .imageScale(.large)
//        }
//
//    }
}



struct CollectionListView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
