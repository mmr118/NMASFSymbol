//
//  ContentView.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 5/16/22.
//

import SwiftUI
import NMASFSymbol

struct ContentView: View {
    
    let collections = SFSymbol.SystemCollection.allCases
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(collections) { collection in
                    
                    NavigationLink(destination: CollectionSymbolGridView(collection: collection)) {
                        Label(collection.displayName, symbol: collection.infoSymbol)
                    }
                }
                
            }
            
        }

    }
    
    
    @ViewBuilder func tempLinkView(_ collection: SFSymbol.SystemCollection) -> some View {
        Text(collection.displayName)
    }
    
}

struct CollectionSymbolGridView: View {
    
    var collection: SFSymbol.SystemCollection
    
    let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }

    var body: some View {
                
        ScrollView {
            
            LazyVGrid(columns: gridItemLayout, spacing: 10) {
                
                ForEach(collection.symbols) { symbol in
                    
                    GroupBox {
                        symbol.image
                        
                        Text(symbol.displayName)
                    
                    }
                    
                }
                
            }
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
