//
//  Image+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/9/22.
//

import Foundation


internal extension RawRepresentable {
    
    var rawString: String { String(describing: self) }
    
    var caseString: String { String(describing: self.self) }

}


internal extension RawRepresentable where RawValue == String {
    
    var rawString: String { return rawValue }
    
}

