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
    lazy var symbols = collection.symbols()

    let columns: [GridItem] = (1...3).map { _ in GridItem(.fixed(.columnSize(count: 3, spacing: 10))) }

    var body: some View {
        ScrollView {

            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(collection.symbols()) { symbol in
                    VStack {
                        GroupBox {

                            Image(systemName: symbol.name)
                                .font(.system(size: 40))
                                .frame(width: 50, height: 50, alignment: .top)


                            Text(symbol.name)
                                .font(.system(size: 14))
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                        }

                    }
                }
            }
            .aspectRatio(1, contentMode: .fit)
        }
    }
}


struct SFSymbolCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = SFSCategoryCollection.devices
        SFSymbolCollectionGridView(collection: collection)
    }
}
