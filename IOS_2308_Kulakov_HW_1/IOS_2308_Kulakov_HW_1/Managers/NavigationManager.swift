//
//  NavigationManager.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 20.09.23.
//

import Foundation
import SwiftUI

final class NavigationManager: ObservableObject {
    
    @Published var listPath = NavigationPath()
    @Published var currentTab = 0
    @Published var isShowLoader = false
    

    func goToTab(_ tabIndex: Int) {
        guard tabIndex != currentTab else {return}
        currentTab = tabIndex
    }
    
    func goToListView(item: ListCell) {
        listPath.append(item)
    }
}
