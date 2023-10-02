//
//  StartScreen.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 19.09.23.
//

import SwiftUI

struct StartScreen: View {

    @ObservedObject var navManager = NavigationManager()
    
    var body: some View {
        TabView(selection: $navManager.currentTab) {
            FirstTabView()
                .tag(0)
                .tabItem {
                    Label("First", systemImage: "1.square")
                }
            SecondTabView()
                .tag(1)
                .tabItem {
                    Label("Second", systemImage: "2.square")
                }
            ThirdTabView()
                .tag(2)
                .tabItem {
                    Label("Third", systemImage: "3.square")
                }
        }
        .accentColor(.purple)
        .environmentObject(navManager)
    }
}

struct StartScreen_Previews: PreviewProvider {
    static var previews: some View {
        StartScreen()
    }
}
