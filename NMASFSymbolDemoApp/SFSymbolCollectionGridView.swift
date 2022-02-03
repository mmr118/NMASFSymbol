//
//  SFSymbolCollectionGridView.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/1/22.
//

import SwiftUI
import CoreData
import NMASFSymbol

struct SFSymbolCollectionGridView: View {
    
    @State private var searchText = ""
    
    let title: String
    let symbols: [SFSymbol]
    
    private let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    
                    ForEach(filteredSymbols, id: \.self) { symbol in
                        
                        GroupBox {
                            
                            Image(systemName: symbol.name)
                                .foregroundColor(.pealWIU)
                                .font(.system(size: 35))
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .top)
                                .cornerRadius(10)
                                .padding(0)
                            
                            Text(symbol.name)
                                .font(.system(size: 12))
                                .lineLimit(2)
                                .multilineTextAlignment(.center)
                                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: .infinity, alignment: .center)
                        }

                    }
                    
                }
                .searchable(text: $searchText)
            }
            .navigationTitle(title)
        }
        
    }
    
    var filteredSymbols: [SFSymbol] {
        
        if searchText.isEmpty {
            return symbols
        } else {
            return symbols.filter { $0.name.contains(searchText) }
        }
        
    }
    
}


struct SFSymbolCollectionView_Previews: PreviewProvider {
    static var previews: some View {
        let collection = SFSCategoryCollection.devices
        Group {
            SFSymbolCollectionGridView(title: collection.title, symbols: collection.symbols())
            
            SFSymbolCollectionGridView(title: collection.title, symbols: collection.symbols())
                .preferredColorScheme(.dark)
        }
    }
}

extension SFSymbol {
    
    var nameComponents: [String] { name.components(separatedBy: ".") }
    
    var nameNoSpace: String { name.replacingOccurrences(of: ".", with: " ") }
}
