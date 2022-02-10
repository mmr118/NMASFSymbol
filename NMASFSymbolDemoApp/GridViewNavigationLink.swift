//
//  GridViewNavigationLink.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/2/22.
//

import SwiftUI
import NMASFSymbol

struct GridViewNavigationLink<T: SFSCollectionProtocol>: View {
    
    let collection: T

    var body: some View {

        NavigationLink(destination: SFSymbolCollectionGridView<T>(collection: collection, selectionModel: SFSymbolSelectionViewModel<T>(collection: collection))) {
                        
            Label {
                Text(collection.title)
                    .tint(.black)
            } icon: {
                Image(systemName: collection.defaultSymbol.systemName.capitalized)
                    .font(.system(size: 25))
                    .foregroundColor(.tealNMA)
            }
            .imageScale(.large)
        }
    }
}

struct GridViewNavigationLink_Previews: PreviewProvider {
    static var previews: some View {
        GridViewNavigationLink(collection: SFSSystemCollection.human)
            .preferredColorScheme(.dark)
    }
}
