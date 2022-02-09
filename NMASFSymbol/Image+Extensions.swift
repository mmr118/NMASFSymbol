//
//  Image+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/9/22.
//

import SwiftUI

public extension Image {
    
    init(sfSymbol: SFSymbol) {
        self.init(systemName: sfSymbol.name)
    }
}
