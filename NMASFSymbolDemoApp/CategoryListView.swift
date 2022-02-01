//
//  CategoryListView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct CategoryListView: View {
    //    @Environment(\.managedObjectContext) private var viewContext
    //
    //    @FetchRequest(
    //        sortDescriptors: [NSSortDescriptor(keyPath: \CustomCategoryData.displayName, ascending: true)],
    //        animation: .default)
    //    private var customCategoryData: FetchedResults<CustomCategoryData>

    var body: some View {

        NavigationView {

            List {
                Section(header: Text("Collections")) {


                }


                ForEach(SFSymbol.SystemCollection.allCases) { category in

                    NavigationLink(destination: SFSymbolCollectionView(symbols: category.symbols())) {
                        Label(category.defaultSymbol.name.capitalized, systemImage: category.defaultSymbol.name)
                    }

                }

            }

        }

    }

    private func createCategory(from categoryData: CustomCategoryData) -> SFSymbol.CustomCategory {
        guard let defaultSymbol = SFSymbol(rawValue: Int(categoryData.defaultSymbolRawValue)) else { fatalError() }
        guard let symbolRawValues = categoryData.sfSymbolRawValues else { fatalError() }
        guard let displayName = categoryData.displayName else { fatalError() }
        let symbols = symbolRawValues.compactMap(SFSymbol.init(rawValue:))
        let customCategory = SFSymbol.CustomCategory(displayName: displayName, defaultSymbol: defaultSymbol, symbols: Array(symbols))
        return customCategory
    }


}

struct CategoryListView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryListView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}





struct SFSymbolCollectionView: View {

    let columns: [GridItem] = (0..<3).map { _ in GridItem(.flexible()) }

    var symbols: [SFSymbol]


    var body: some View {

        ScrollView {

            LazyVGrid(columns: columns) {

                ForEach(symbols) { symbol in

                    VStack {
                        Image(systemName: symbol.name)
                        Text(symbol.name)
                    }
                    .cornerRadius(8)

                }


            }

        }

    }

}
