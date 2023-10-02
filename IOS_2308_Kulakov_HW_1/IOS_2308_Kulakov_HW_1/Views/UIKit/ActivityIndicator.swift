//
//  ActuvityIndicator.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 2.10.23.
//

import SwiftUI

struct ActivityIndicator: UIViewRepresentable {
    @Binding var isAnimating: Bool
    
    func makeUIView(context: Context) -> UIActivityIndicatorView {
      let view = UIActivityIndicatorView()
        view.color = .purple
        view.style = .large
        
        return view
    }
    
    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
        if isAnimating {
            uiView.startAnimating()
        } else {
            uiView.stopAnimating()
        }
    }
}
