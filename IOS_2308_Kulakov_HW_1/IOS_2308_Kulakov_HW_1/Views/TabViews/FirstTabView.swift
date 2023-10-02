//
//  FirstTabView.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 19.09.23.
//

import SwiftUI

struct FirstTabView: View {
    
    @EnvironmentObject var navManager: NavigationManager
    
    var body: some View {
        Button("Jump to Second Tab") {
            navManager.goToTab(1)
            navManager.isShowLoader = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                navManager.isShowLoader = false
                navManager.goToListView(item: .three)
            }
        }
        .buttonStyle(RoundedButtonStyle())
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView()
    }
}
