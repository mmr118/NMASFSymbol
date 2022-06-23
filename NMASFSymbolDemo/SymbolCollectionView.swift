//
//  SymbolCollectionView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 6/23/22.
//

import SwiftUI
import NMASFSymbol

struct SymbolCollectionView: View {
    
    @State var searchText = String()
    
    var title: String
    var symbols: [SFSymbol]
    
    init(_ title: String, symbols: [SFSymbol]) {
        self.title = title
        self.symbols = symbols
    }
    
    init(collection: SFSymbol.SystemCollection) {
        self.title = collection.displayName
        self.symbols = collection.symbols
    }
    
    var body: some View {
        
        List {
            
            ForEach(filteredSymbols()) { symbol in
                
                Label(symbol.displayName, symbol: symbol)
                
            }
            
        }
        .searchable(text: $searchText)
        .navigationTitle(title)
        
    }
    
    private func filteredSymbols() -> [SFSymbol] {
        guard searchText.isEmpty == false else { return symbols }
        return symbols.filter { $0.displayName.lowercased().contains(searchText.lowercased()) }
    }
    
}

struct SymbolCollectionView_Previews: PreviewProvider {
    
    static var previews: some View {
        SymbolCollectionView(collection: .allSymbols)
    }
}
