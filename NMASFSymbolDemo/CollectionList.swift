//
//  SymbolCollectionList.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 3/5/22.
//

import SwiftUI
import NMASFSymbol
import UIKit

struct CollectionList: View {
    
    @State var isPresentingCreate: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            List {
                            
                Section("System Categories") {
                    
                    ForEach(SystemSymbolCollection.allCollections) { collection in
                        
                        NavigationLink(destination: SymbolGrid(collection: collection)) {
                            Group {
                                HStack {
                                    Image(symbol: collection.infoSymbol)
                                    Text(collection.title)
                                    Spacer()
                                    Text(collection.symbols.count.description)
                                        .font(.footnote)
                                        .foregroundColor(Color(UIColor.placeholderText))
                                }
                                
                            }
                            
                        }
                        
                    }
                    
                }
                
            }
            .sheet(isPresented: $isPresentingCreate) {
                // dismiss action
            } content: {
                CreateCollection()
            }
            .navigationTitle("NMA SFSymbol")
            .navigationBarItems(
                trailing:
                    Button(action: { isPresentingCreate = true }) {
                        Image(symbol: .plus)
                    }
            )
        }
    }
        
}

struct CollectionList_Previews: PreviewProvider {
    
    static let systemCollections = SystemSymbolCollection.allCollections
    
    static var previews: some View {
        displayLastUpdated {
            CreateCollection()
        }
    }
}


struct SymbolGrid<T: SFSCollectionProtocol>: View {
    
    private let gridItemLayout = (1...3).map { _ in GridItem(.fixed(100)) }
    
    @State private var searchText = ""

    
    var collection: T
    
    var body: some View {
        
        ScrollView {
            
            LazyVGrid(columns: gridItemLayout, spacing: 10) {
                
                ForEach(Array(collection.symbols)) { symbol in
                    
                    symbolBox(symbol)
                }
                
            }
            .searchable(text: $searchText)
            .navigationBarTitle(collection.title, displayMode: .inline)
        }
        
    }
    
    @ViewBuilder private func symbolBox(_ symbol: SFSymbol) -> some View {
        GroupBox {
            Image(systemName: symbol.systemName)
                .foregroundColor(.pealWIU)
                .font(.system(size: 35))
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .center)
                .cornerRadius(10)
                .padding (0)
            
            Text(symbol.systemName)
                .font(.system(size: 12))
                .lineLimit(2)
                .multilineTextAlignment(.center)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: .infinity, alignment: .center)
        }

    }
    
    private func filteredSymbols() -> [SFSymbol] {
        guard !searchText.isEmpty else { return collection.symbolArr }
        return collection.symbolArr.filter { $0.systemName.contains(searchText) }
    }
}


struct CreateCollection: View {
    
    @StateObject var model: SymbolCollectionModel = SymbolCollectionModel()

    var body: some View {
        VStack {
            Image(symbol: model.infoSymbol)
                .font(.system(size: 100))
                .frame(square: 200)
            TextField("Collection Title", text: $model.title)
                .font(.system(size: 30, weight: .medium, design: .rounded))
                .multilineTextAlignment(.center)
            Spacer()
            
            
        }
        

    }

}



@MainActor class SymbolCollectionModel: ObservableObject {
    
    @Published var title: String
    @Published private(set) var infoSymbol: SFSymbol
    @Published private(set) var symbols: Set<SFSymbol>
    @Published private(set) var collection: SymbolCollection
    
    init(collection passedCollection: SymbolCollection? = nil) {
        let collection = passedCollection ?? SymbolCollection()
        self.title = collection.title
        self.infoSymbol = collection.infoSymbol
        self.symbols = collection.symbols
        self.collection = collection
    }
    
}
