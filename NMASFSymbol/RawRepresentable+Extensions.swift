//
//  RawRepresentable+Extensions.swift
//  NMASFSymbol
//
//  Created by Monica Rondón on 2/1/22.
//

import Foundation


internal extension RawRepresentable where RawValue == String {
    
    var rawString: String { rawValue }
    
}
 
internal extension RawRepresentable {
    
    var rawString: String { String(describing: self) }

}
