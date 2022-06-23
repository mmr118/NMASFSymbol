//
//  Label+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 6/23/22.
//

import SwiftUI


@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
extension Label where Title == Text, Icon == Image {
    
    /// Creates a label with a system icon image and a title generated from a
    /// localized string.
    ///
    /// - Parameters:
    ///    - titleKey: A title generated from a localized string.
    ///    - symbol: The symbol of the image resource.
    public init(_ titleKey: LocalizedStringKey, symbol: SFSymbol) {
        self.init(titleKey, systemImage: symbol.systemName)
    }
    
    /// Creates a label with a system icon image and a title generated from a
    /// string.
    ///
    /// - Parameters:
    ///    - title: A string used as the label's title.
    ///    - symbol: The symbol of the image resource.
    public init<S>(_ title: S, symbol: SFSymbol) where S : StringProtocol {
        self.init(title, systemImage: symbol.systemName)
    }
    
    /// Creates a label with a system icon image and a the `SFSymbol.displayname` as a title
    /// - Parameter symbol: The symbol of the image resource.
    public init(labeledSymbol symbol: SFSymbol) {
        self.init(symbol.displayName, systemImage: symbol.systemName)
    }
    
    /// Creates a label with a system icon image with an empty `String` as a title
    /// string.
    ///
    /// - Parameters:
    ///    - symbol: The symbol of the image resource.
    public init(symbol: SFSymbol) {
        self.init(String(), systemImage: symbol.systemName)
    }
    
}
