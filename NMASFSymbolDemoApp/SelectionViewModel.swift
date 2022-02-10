//
//  SelectionViewModel.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

import SwiftUI
import NMASFSymbol

class SelectionViewModel<T: Hashable>: ObservableObject {
    
    var selectedElems = Set<T>()
    var exisitingElems: Set<T>
    
    init<S: Sequence>(exisiting: S) where S.Element == T {
        self.exisitingElems = Set(exisiting)
    }
    
    func handleSelection(_ element: T) {
        self.selectedElems.insert(element)
    }
    
    func isExistingOrSelected(_ element: T) -> Bool {
        return exisitingElems.union(selectedElems).contains(element)
    }
    
}


// MARK: - SFSymbolSelectionViewModel
class SFSymbolSelectionViewModel<SFCType: SFSCollectionProtocol>: SelectionViewModel<SFSymbol> {
    
    var collection: SFCType
    
    init(collection: SFCType) {
        self.collection = collection
        super.init(exisiting: collection.symbols())
    }
    
}

