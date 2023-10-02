//
//  RoundedButtonStyle.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 22.09.23.
//

import Foundation
import SwiftUI

struct RoundedButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.system(size: 20, weight: .black, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.purple)
                    .shadow(radius: 5, x: configuration.isPressed ? 0 : 3, y: configuration.isPressed ? 0 : 3)
                    
            )
            .offset(x: configuration.isPressed ? 2 : 0, y: configuration.isPressed ? 2 : 0)
        
    }
    
}

struct RoundedButtonStyle_Preview: PreviewProvider {
    static var previews: some View {
        Button("Button") {
            print("Button tap")
        }
        .buttonStyle(RoundedButtonStyle())
    }
    
    
}
