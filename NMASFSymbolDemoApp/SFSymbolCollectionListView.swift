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

            let systemCollectoins = SFSCategoryCollection.allCases

            ForEach(systemCollectoins) { collection in

                NavigationLink(destination: SFSymbolCollectionGridView(collection: collection)) {
                    Label {
                        Text(collection.title)
                    } icon: {
                        Image(systemName: collection.defaultSymbol.name)
                            .tint(.purple)
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
