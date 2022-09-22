//
//  WatchCardView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/5/22.
//

import SwiftUI

struct WatchCardView: View {
    
    @EnvironmentObject var storeModel: StoreModel
    let watch: Watch
    let viewType: ViewType
    let gridItemWidth: Double
    
    var body: some View {
        
        Group {
            switch viewType {
            case .list:
                WatchCardListView(watch: watch)

            case .grid:
                WatchCardGridView(watch: watch)
            }
        }
        .padding()
        .hidden()
        .overlay {
            Group {
                switch viewType {
                case .list:
                    NavigationLink(value: Route.detail(watch: watch)) {
                        WatchCardListView(watch: watch)
                    }
                    .opacity(viewType  == .list ? 1 : 0)
                    
                case .grid:
                    NavigationLink(value: Route.detail(watch: watch)) {
                        WatchCardGridView(watch: watch)
                    }
                    .opacity(viewType  == .grid ? 1 : 0)
                }
            }
            .padding()
        }
    }
}

struct WatchCardView_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardView(watch: dev.watch, viewType: .list, gridItemWidth: UIScreen.main.bounds.size.width - 40)
            .environmentObject(StoreModel())
    }
}
