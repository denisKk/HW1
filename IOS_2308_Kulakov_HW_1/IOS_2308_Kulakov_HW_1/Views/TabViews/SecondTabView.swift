//
//  SecondTabView.swift
//  IOS_2308_Kulakov_HW_1
//
//  Created by Dev on 19.09.23.
//

import SwiftUI

enum ListCell: String, CaseIterable {
    case one
    case two
    case three
    case four
    case five
}

struct SecondTabView: View {
    
    @EnvironmentObject var navManager: NavigationManager
    
    var body: some View {
        
        NavigationStack(path: $navManager.listPath) {
            List {
                ForEach(ListCell.allCases, id: \.self) {cell in
                    NavigationLink(cell.rawValue.capitalized, value: cell)
                }
            }
            .navigationDestination(for: ListCell.self) { cell in
                ListCellView(title: cell.rawValue)
            }
            .overlay {
                LoaderView(isAnimating: $navManager.isShowLoader)
            }
        }
        
    }
}

struct ListCellView: View {
    let title: String
    
    var body: some View {
        ZStack {
            Color.clear
                .ignoresSafeArea()
            Text("\(title.capitalized)\nview")
                .font(.system(size: 100, weight: .thin))
        }
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView()
            .environmentObject(NavigationManager())
    }
}
