//
//  UIImage+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import UIKit


public extension UIImage {
    
    convenience init?(sfSymbol: SFSymbol, withConfiguration config: UIImage.SymbolConfiguration) {
        self.init(systemName: sfSymbol.name, withConfiguration: config)
    }
    
    convenience init?(sfSymbol: SFSymbol) {
        self.init(systemName: sfSymbol.name)
    }
    
}


