//
//  Image+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 6/23/22.
//

import SwiftUI


@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public extension Image {
    
    /// Creates a system symbol image.
    ///
    /// - Parameter symbol: The `SFSymbol` for the system symbol image.
    @available(macOS 11.0, *)
    init(symbol: SFSymbol) {
        self.init(systemName: symbol.systemName)
    }
    
}
