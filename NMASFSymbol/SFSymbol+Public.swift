//
//  SFSymbol+Public.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import UIKit
import SwiftUI

// MARK: Common
public extension SFSymbol {
    
    /// A random `SFSymbol`
    static func random() -> SFSymbol {
        allCases.randomElement() ?? .questionmark_circle
    }
    
    /// The name of the system symbol image used in `Swift`
    var systemName: String { rawValue }
    
    /// The name of the system symbol using spaces instead of `.`
    var displayName: String { rawValue.reduce(into: String()) { $1 == "." ? $0.append(" ") : $0.append($1) } }
    
    init?(name: String) {
        self.init(rawValue: name)
    }
    
}

// MARK: - SFSymbol Identifiable conformance
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension SFSymbol: Identifiable {
    
    public var id: String { return rawValue }
    
}

// MARK: - UIKit
public extension SFSymbol {
        
    /// Returns an image object of the system symbol image.
    var uiImage: UIImage? { UIImage(symbol: self) }
    
    /// Returns an image object of the system symbol image with the
    /// specified configuration.
    ///
    /// - parameter configuration: The image configuration that you want.
    /// Use this parameter to specify traits and other details that define
    /// which variant of the image you want. For example, you can request a
    /// symbol image with a specified weight.
    func uiImage(with configuration: UIImage.SymbolConfiguration) -> UIImage? {
        return UIImage(symbol: self, withConfiguration: configuration)
    }
    
    /// Returns an image object of the system symbol image appropriate for the
    /// specified traits.
    ///
    /// - parameter traitCollection: The traits associated with the intended
    /// environment for the image. Use this parameter to ensure that the correct
    /// variant of the image is loaded. If you specify nil, this method uses the
    /// traits associated with the main screen.
    func uiImage(compatibleWith traitCollection: UITraitCollection?) -> UIImage? {
        return UIImage(symbol: self, compatibleWith: traitCollection)
    }

}

// MARK: - SwiftUI
public extension SFSymbol {
    
    /// Returns a system symbol image.
    var image: Image? { Image(symbol: self) }
        
}
