//
//  SFSymbolView.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/8/22.
//

import SwiftUI
import NMASFSymbol

struct SFSymbolView: View {
    
    @Environment(\.editMode) private var editMode
    
    var sfSymbol: SFSymbol
    
    @State var isSelected: Bool
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            GroupBox {
                
                Image(systemName: sfSymbol.systemName)
                    .foregroundColor(.pealWIU)
                    .font(.system(size: 35))
                    .frame(minWidth: 0, maxWidth: .infinity, minHeight: 40, maxHeight: .infinity, alignment: .center)
                    .cornerRadius(10)
                    .padding (0)
                
                Text(sfSymbol.systemName)
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
//        .disabled(editMode?.wrappedValue.isEditing ?? false)
        .onTapGesture {
            isSelected = !isSelected
        }
        
    }
    
    private func selectionImage() -> Image {
        if $isSelected.wrappedValue {
            return Image(sfSymbol: .checkmark_circle_fill)
        } else {
            return Image(sfSymbol: .circle)
        }
        
    }
}

struct SFSymbolView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        SFSymbolView(sfSymbol: SFSymbol.allCases.randomElement()!, isSelected: true).environment(\.editMode, Binding.constant(EditMode.active))
            .previewLayout(.fixed(width: 100, height: 150))
        
        //        SFSymbolView(sfSymbol: SFSymbol.allCases.randomElement()!, isSelected: false).environment(\.editMode, Binding.constant(EditMode.active))
        //            .previewLayout(.fixed(width: 100, height: 150))
        //
        //        SFSymbolView(sfSymbol: SFSymbol.allCases.randomElement()!, isSelected: true).environment(\.editMode, Binding.constant(EditMode.inactive))
        //            .previewLayout(.fixed(width: 100, height: 150))
        //
        //        SFSymbolView(sfSymbol: SFSymbol.allCases.randomElement()!, isSelected: false).environment(\.editMode, Binding.constant(EditMode.inactive))
        //            .previewLayout(.fixed(width: 100, height: 150))
    }
}
