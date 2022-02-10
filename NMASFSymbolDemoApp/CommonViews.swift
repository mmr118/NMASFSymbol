//
//  CommonViews.swift
//  NMASFSymbolDemoApp
//
//  Created by Monica Rondón on 2/9/22.
//

import SwiftUI

//struct CommonViews: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct CommonViews_Previews: PreviewProvider {
//    static var previews: some View {
//        CommonViews()
//    }
//}


extension View {
    
    @ViewBuilder func deleteLabel() -> some View {
        Text("Delete")
        Image(sfSymbol: .trash_fill)
    }
    
    
    @ViewBuilder func initialsCircle(_ initials: String, fillColor: Color = .accentColor) -> some View {
//        Label {
//            Text(person.fullName)
//                .font(.body)
//                .foregroundColor(.primary)
//            Text(person.title)
//                .font(.subheadline)
//                .foregroundColor(.secondary)
//        } icon: {
            Circle()
                .fill(fillColor)
                .frame(width: 44, height: 44, alignment: .center)
                .overlay(Text(initials))
//        }
    }
    
}
