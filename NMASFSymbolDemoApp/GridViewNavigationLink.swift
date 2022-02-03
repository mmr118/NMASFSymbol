//
//  GridViewNavigationLink.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/2/22.
//

import SwiftUI
import NMASFSymbol

struct GridViewNavigationLink<T>: View where T: SFSCollectionProtocol {
    
    let collection: T

    var body: some View {

        NavigationLink(destination: SFSymbolCollectionGridView(title: collection.title, symbols: collection.symbols())) {

            Label {
                Text(collection.title)
                    .tint(.black)
            } icon: {
                Image(systemName: collection.defaultSymbol.name.capitalized)
                    .font(.system(size: 25))
                    .foregroundColor(.tealNMA)
            }
            .imageScale(.large)
        }
    }
}

struct GridViewNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        GridViewNavigationLink(collection: SFSCategoryCollection.human)
            .preferredColorScheme(.dark)
    }
}