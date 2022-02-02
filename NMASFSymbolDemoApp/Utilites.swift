//
//  Utilites.swift
//  NMASFSymbolDemoApp
//
//  Created by Rondon Monica on 2/2/22.
//

import Foundation
import UIKit





extension CGRect {

    static let screenBounds = UIScreen.main.bounds
    
}

extension CGFloat {

    static func columnSize(count: Int, spacing: CGFloat) -> CGFloat {
        let totalSpacing = CGFloat(count) * spacing
        let totalColumnsWidth = CGRect.screenBounds.width - totalSpacing
        return totalColumnsWidth / CGFloat(count)
    }

}



