//
//  CloseButtonStyle.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 2.10.23.
//

import Foundation
import SwiftUI

struct CloseButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20, weight: .black, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(
                Circle()
                    .foregroundColor(.purple)
                    .shadow(radius: 5, x: configuration.isPressed ? 0 : 3, y: configuration.isPressed ? 0 : 3)
                    
            )
            .offset(x: configuration.isPressed ? 2 : 0, y: configuration.isPressed ? 2 : 0)
        
    }
    
}

struct CloseButtonStyle_Preview: PreviewProvider {
    static var previews: some View {
        Button("X") {
            print("Close button tap")
        }
        .buttonStyle(CloseButtonStyle())
    }
    
    
}
