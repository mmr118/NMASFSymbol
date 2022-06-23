//
//  ContentView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 6/23/22.
//

import SwiftUI
import NMASFSymbol

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(SFSymbol.SystemCollection.allCases) { collection in
                    
                    NavigationLink {
                        SymbolCollectionView(collection: collection)
                    } label: {
                        Label(collection.displayName, symbol: collection.infoSymbol)
                    }
                    
                }
                
            }
            .navigationBarTitle("SFSymbol Demo")
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
