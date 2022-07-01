//
//  UIImage+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 6/23/22.
//

import UIKit


public extension UIImage {
    
    /// Creates an image object that contains a system symbol image.
    ///
    /// - parameter symbol: The `SFSymbol` for the system symbol image.
    convenience init?(symbol: SFSymbol) {
        self.init(systemName: symbol.systemName)
    }
    
    
    /// Creates an image object that contains a system symbol image with the
    /// specified configuration.
    ///
    /// - parameters:
    ///   - symbol: The `SFSymbol` for the system symbol image.
    ///   - configuration: The image configuration that you want.
    ///   Use this parameter to specify traits and other details that define
    ///   which variant of the image you want. For example, you can request a
    ///   symbol image with a specified weight.
    convenience init?(symbol: SFSymbol, withConfiguration configuration: UIImage.SymbolConfiguration) {
        self.init(systemName: symbol.systemName, withConfiguration: configuration)
    }
    
    
    /// Creates an image object that contains a system symbol image appropriate
    /// for the specified traits.
    ///
    /// - parameters:
    ///   - symbol: The `SFSymbol` for the system symbol image.
    ///   - traitCollection: The traits associated with the intended environment
    ///   for the image.
    ///   Use this parameter to ensure that the correct variant of the image
    ///   is loaded. If you specify nil, this method uses the traits associated
    ///   with the main screen.
    convenience init?(symbol: SFSymbol, compatibleWith traitCollection: UITraitCollection?) {
        self.init(systemName: symbol.systemName, compatibleWith: traitCollection)
    }
    
}
