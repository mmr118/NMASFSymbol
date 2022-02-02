//
//  SFSymbolCollectionListView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct SFSymbolCollectionListView: View {
    //    @Environment(\.managedObjectContext) private var viewContext
    //
    //    @FetchRequest(
    //        sortDescriptors: [NSSortDescriptor(keyPath: \CustomCategoryData.displayName, ascending: true)],
    //        animation: .default)
    //    private var customCategoryData: FetchedResults<CustomCategoryData>

    var body: some View {

        NavigationView {

            List {
                
                Section("Collections") {

                    let customCollections = SFSCollection.cache.map { $0 }

                    ForEach(customCollections) { collection in

                        NavigationLink(destination: SFSymbolCollectionGridView(collection: collection)) {

                            Label {

                                Text(collection.title)
                                    .tint(.black)

                            } icon: {

                                Image(systemName: collection.defaultSymbol.name)
                                    .tint(.black)
                                    .foregroundColor(.black)

                            }
                            .imageScale(.large)

                        }

                    }

                }

                Section("Categories") {

                    let collections = SFSCategoryCollection.allCases

                    ForEach(collections) { collection in

                        NavigationLink(destination: SFSymbolCollectionGridView(collection: collection)) {

                            Label {
                                Text(collection.title)
                                    .tint(.black)
                            } icon: {
                                Image(systemName: collection.defaultSymbol.name)
                                    .tint(.black)
                                    .foregroundColor(.black)
                            }
                            .imageScale(.large)
                        }
                    }
                }
            }
        }
    }
}

struct SFSymbolCollectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolCollectionListView() //collections: SFSCategory.allCases) // .environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
