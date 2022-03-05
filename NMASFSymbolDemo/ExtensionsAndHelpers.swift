//
//  Extensions.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 3/5/22.
//

import Foundation
import SwiftUI
import NMASFSymbol

extension SFSCollectionProtocol {
    
    var symbolArr: [SFSymbol] { Array(symbols) }
    
}

// MARK: - PreviewProvider
/// View to help with presenting a preview model
struct PreviewPresentation<Content: View>: View {
    
    @State var isPresenting: Bool = false
    
    var fullscreen: Bool = false
    @ViewBuilder var content: () -> Content
    
    var body: some View {
        
        Button("Present \(String(describing: Content.self))") {
            isPresenting = true
        }
        .background(.purple)
        .if(fullscreen) {  view in
            view
                .fullScreenCover(isPresented: $isPresenting) {
                    // do something?
                } content: {
                    content()
                }
        }
        .if(fullscreen == false) { view in
            view
                .sheet(isPresented: $isPresenting) {
                    // do something?
                } content: {
                    content()
                }
        }
        
    }
}

extension PreviewProvider {
    
    // MARK: View wrappers
    @ViewBuilder
    /// Show the time the preview was last updated in the device name
    static func displayLastUpdated<Content: View>(_ content: @escaping () -> Content) -> some View {
        content()
            .previewDevice(PreviewDevice(rawValue: "12 Pro de"))
            .previewDisplayName(Date().formatted(date: .omitted, time: .standard))
        
    }
    
    /// Basic `HStack` to display a "left-side image cell"
    static func cell<Content: View>(size: CGFloat = 50, text: String? = nil, _ badge: @escaping () -> Content) -> some View {
        HStack(spacing: 10) {
            badge()
                .frame(width: size, height: size)
            Text(text ?? "Prototype Cell")
            Spacer()
        }
    }
    
}


// MARK: - View
extension View {
    
    var rawString: String { String(describing: self) }
    
    /// Applies the given transform if the given condition evaluates to `true`.
    /// - Parameters:
    ///   - condition: The condition to evaluate.
    ///   - transform: The transform to apply to the source `View`.
    /// - Returns: Either the original `View` or the modified `View` if the condition is `true`.
    @ViewBuilder func `if`<Content: View>(_ condition: Bool, transform: (Self) -> Content) -> some View {
        if condition {
            transform(self)
        } else {
            self
        }
    }
    
    /// Positions this view within an invisible frame with the specified size.
    ///
    /// Use this method to specify a fixed size for a view's width and height.
    ///
    /// - Returns: A view with fixed dimensions of `width` and `height`, for the
    ///   parameter.
    @inlinable public func frame(size: CGSize, alignment: Alignment = .center) -> some View {
        self
            .frame(width: size.width, height: size.height, alignment: alignment)
    }
    
    /// Positions this view within an invisible frame with the specified square size.
    ///
    /// Use this method to specify a fixed, equal size for a view's width and height.
    ///
    /// - Returns: A view with fixed dimensions of `width` and `height`, for the
    ///   parameter.
    @inlinable public func frame(square value: CGFloat, alignment: Alignment = .center) -> some View {
        self
            .frame(width: value, height: value, alignment: alignment)
    }
    
}

