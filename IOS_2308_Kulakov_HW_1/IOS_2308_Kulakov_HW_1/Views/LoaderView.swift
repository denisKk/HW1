//
//  LoaderView.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 2.10.23.
//

import SwiftUI

struct LoaderView: View {
    
    @Binding var isAnimating: Bool
    
    var body: some View {
        ZStack {
            ActivityIndicator(isAnimating: $isAnimating)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(isAnimating ? .gray.opacity(0.2) : .clear)
    }
}

struct LoaderView_Previews: PreviewProvider {
    static var previews: some View {
        LoaderView(isAnimating: .constant(true))
    }
}
