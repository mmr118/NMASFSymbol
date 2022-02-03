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

    @Environment(\.managedObjectContext) private var viewContext
    @FetchRequest(sortDescriptors: [NSSortDescriptor(keyPath: \SFSCollectionData.title, ascending: true)], animation: .default)

    private var customCategoryData: FetchedResults<SFSCollectionData>

    var body: some View {

        NavigationView {

            List {

                let customCollections = customCategoryData.map(makeCollections(_:))

                if !customCollections.isEmpty {
                    Section("Collections") {
                        ForEach(customCollections) { collection in
                            GridViewNavigationLink(collection: collection)
                        }
                    }

                }

                if !SFSCollection.cache.isEmpty {
                    Section {
                        let cachedCollections = SFSCollection.cache.map { $0 }
                        ForEach(cachedCollections) { collection in
                            GridViewNavigationLink(collection: collection)
                        }
                    } header: {
                        Text("Cached Collections")
                    } footer: {
                        Text("These will delete when the app is closed.")
                    }
                }

                Section("Categories") {

                    let collections = SFSCategoryCollection.allCases
                    ForEach(collections) { collection in
                        GridViewNavigationLink(collection: collection)
                    }
                }
            }
    }
        .navigationTitle("NMA SFSymbol")
    }

    private func makeCollections(_ data: SFSCollectionData) -> SFSCollection {
        guard let title = data.title else { fatalError() }
        guard let defaultSymbolRawValue = data.defaultSFSymbolRawValue else { fatalError() }
        guard let defaultSymbol = SFSymbol(rawValue: defaultSymbolRawValue) else { fatalError() }
        guard let sfSymbolRawValuesSet = data.symbolsRawValues else { fatalError() }
        let sfSymbols = sfSymbolRawValuesSet.compactMap(SFSymbol.init(rawValue:))
        assert(data.symbolsRawValues?.count == sfSymbols.count)
        return SFSCollection(title: title, defaultSymbol: defaultSymbol, symbols: sfSymbols)
    }

}

struct SFSymbolCollectionListView_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolCollectionListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
