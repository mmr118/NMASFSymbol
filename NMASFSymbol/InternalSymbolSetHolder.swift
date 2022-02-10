//
//  InternalSymbolSetHolder.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation

/// Internal protocol used for accessing internal property and handling
/// auto conformance in `SymbolCollectionProtocol` extension
internal protocol InternalSymbolSetHolder {
    var symbolSet: Set<SFSymbol> { get }
}

extension SFSymbolCollection: InternalSymbolSetHolder { }

extension SFSystemSymbolCollection: InternalSymbolSetHolder { }
