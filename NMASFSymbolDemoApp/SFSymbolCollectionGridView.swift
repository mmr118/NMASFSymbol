//
//  SFSymbolCollectionGridView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct SFSymbolCollectionGridView<T: SFSCollectionProtocol>: View {

    @Binding var searchText: String

    var collection: T

    private let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }

    var body: some View {

        ScrollView {

            LazyVGrid(columns: gridItemLayout, spacing: 10) {

                ForEach(collection.symbols()) { symbol in

                    GroupBox {

                        Image(systemName: symbol.name)
                            .font(.system(size: 40))
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 50, maxHeight: .infinity, alignment: .top)
                            .cornerRadius(10)

                        let bText = Binding<String>(get: { "" }, set: { _ in })
                        Text(symbol.name)
                            .font(.system(size: 12))
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: .infinity, alignment: .bottom)
                            .searchable(text: bText)
                    }

                }

            }

        }

    }

}


struct SFSymbolCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = SFSCategoryCollection.devices
        SFSymbolCollectionGridView(searchText: .constant(""), collection: collection)
    }
}
