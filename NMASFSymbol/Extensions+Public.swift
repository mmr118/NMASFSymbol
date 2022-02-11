//
//  Extensions+Public.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/10/22.
//

import Foundation
import UIKit
import SwiftUI

// MARK: - UIImage+Extensions
public extension UIImage {
    
    /// Creates an image object that contains a system symbol image.
    ///
    /// - parameter sfSymbol: The `SFSymbol` for the system symbol image.
    convenience init?(sfSymbol: SFSymbol) {
        self.init(systemName: sfSymbol.systemName)
    }

    
    /// Creates an image object that contains a system symbol image with the
    /// specified configuration.
    ///
    /// - parameters:
    ///   - sfSymbol: The `SFSymbol` for the system symbol image.
    ///   - configuration: The image configuration that you want.
    ///   Use this parameter to specify traits and other details that define
    ///   which variant of the image you want. For example, you can request a
    ///   symbol image with a specified weight.
    convenience init?(sfSymbol: SFSymbol, withConfiguration configuration: UIImage.SymbolConfiguration) {
        self.init(systemName: sfSymbol.systemName, withConfiguration: configuration)
    }
    
    
    /// Creates an image object that contains a system symbol image appropriate
    /// for the specified traits.
    ///
    /// - parameters:
    ///   - sfSymbol: The `SFSymbol` for the system symbol image.
    ///   - traitCollection: The traits associated with the intended environment
    ///   for the image.
    ///   Use this parameter to ensure that the correct variant of the image
    ///   is loaded. If you specify nil, this method uses the traits associated
    ///   with the main screen.
    convenience init?(sfSymbol: SFSymbol, compatibleWith traitCollection: UITraitCollection?) {
        self.init(systemName: sfSymbol.systemName, compatibleWith: traitCollection)
    }
        
}



// MARK: - Image+Extensions
public extension Image {
    
    /// Creates a system symbol image.
    ///
    /// - Parameter sfSymbol: The `SFSymbol` for the system symbol image.
    init(sfSymbol: SFSymbol) {
        self.init(systemName: sfSymbol.systemName)
    }
    
}

