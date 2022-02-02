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

    var collection: T

    let columns = (1...3).map { _ in GridItem(.flexible()) }

    var body: some View {

        NavigationView {
            ScrollView {

                LazyVGrid(columns: columns, spacing: 10) {

                    ForEach(collection.symbols()) { symbol in

                        GroupBox {

                            VStack(alignment: .center, spacing: 10) {

                                Image(systemName: symbol.name)
                                    .font(.system(size: 40))
                                    .frame(width: 50, height: 50, alignment: .top)

                                let bText = Binding<String>(get: { "" }, set: { _ in })
                                Text(symbol.name)
                                    .font(.system(size: 14))
                                    .lineLimit(2)
                                    .multilineTextAlignment(.center)
                                    .frame(alignment: .top)
                                    .searchable(text: bText)
                            }
                        }
                        .padding(0)
                    }
                }
            }
        }
    }
}


struct SFSymbolCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = SFSCategoryCollection.devices
        SFSymbolCollectionGridView(collection: collection)
    }
}
