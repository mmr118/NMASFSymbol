//
//  SymbolSelectionView.swift
//  NMASFSymbolDemo
//
//  Created by Monica Rondón on 2/12/22.
//

import SwiftUI
import NMASFSymbol


struct SymbolSelectionView: View {
    
    @Environment(\.editMode) private var editMode
    
    var symbol: SFSymbol
    
    @State var isSelected: Bool
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            GroupBox {
                
                Image(systemName: symbol.systemName)
                    .foregroundColor(.pealWIU)
                    .font(.system(size: 35))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .center)
                    .cornerRadius(10)
                    .padding (0)
                
                Text(symbol.systemName)
                    .font(.system(size: 12))
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 30, maxHeight: .infinity, alignment: .center)
            }
            
            if editMode?.wrappedValue == .active {
                HStack(alignment: .top, spacing: 0) {
                    Spacer()
                    selectionImage()
                        .font(.system(size: 14))
                        .foregroundColor(Color(UIColor.systemBlue))
                }
                .frame(alignment: .trailing)
                .padding(10)
                
            }
            
        }
        .onTapGesture {
            if editMode?.wrappedValue == .active {
                isSelected = !isSelected
            }
        }
        
    }
    
    private func selectionImage() -> Image {
        if $isSelected.wrappedValue {
            return Image(symbol: .checkmark_circle_fill)
        } else {
            return Image(symbol: .circle)
        }
        
    }
}

struct SymbolSelectionView_Preview: PreviewProvider {
    static var previews: some View {
        SymbolSelectionView(symbol: SFSymbol.allCases.randomElement()!, isSelected: true).environment(\.editMode, Binding.constant(EditMode.active))
            .previewLayout(.fixed(width: 100, height: 150))
        
        SymbolSelectionView(symbol: SFSymbol.allCases.randomElement()!, isSelected: true).environment(\.editMode, Binding.constant(EditMode.inactive))
            .previewLayout(.fixed(width: 100, height: 150))
        
    }
}

