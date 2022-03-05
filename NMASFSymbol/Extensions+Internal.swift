//
//  Image+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/9/22.
//

import Foundation


internal extension RawRepresentable {

    var typeString: String { String(describing: type(of: self)) }

    var caseString: String { String(describing: self) }

    var rawString: String { String(describing: self.rawValue) }

}

internal extension RawRepresentable where RawValue == String {
    
    var rawString: String { return rawValue }
    
}
