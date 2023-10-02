//
//  ThirdTabView.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 19.09.23.
//

import SwiftUI

struct ThirdTabView: View {
    @State var isShowModal = false
    
    var body: some View {
        
        Button("Open modal view") {
            isShowModal.toggle()
        }
        .buttonStyle(RoundedButtonStyle())
        .sheet(isPresented: $isShowModal) {
            modalView
        }

    }
    
    private var modalView: some View {
        ZStack() {
            Text("Modal view")
                .fontDesign(.rounded)
                .font(.system(size: 100, weight: .thin))
            .lineLimit(2)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 60, height: 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top)
        )
    }
}

struct ThirdTabView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdTabView()
    }
}
