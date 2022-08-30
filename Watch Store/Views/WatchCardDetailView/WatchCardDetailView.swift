//
//  WatchCardDetailView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/29/22.
//

import SwiftUI

struct WatchCardDetailView: View {
    
    let watch: Watch
    let cardOffset: CGFloat = 30
    
    var body: some View {
        
        ScrollView {
            
            VStack {
                
                ZStack(alignment: .bottom) {
                    GradientBackgroundView()
                        .frame(height: 265)
                    
                    Image(watch.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 208, height: 352)
                        .offset(y: -cardOffset)
                }
                .padding(.top, cardOffset)
                .overlay(alignment: .bottomTrailing) {
                    FavoriteWatchView(watch: watch)
                        .frame(width: 38, height: 38)
                        .padding()
                }
            }
        }
        .padding()
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                Image(systemName: "bag")
                    .badge(9)
            }
            
            ToolbarItem(placement: .primaryAction) {
                Image(systemName: "x.circle.fill")
            }
        }
    }
}

struct WatchCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WatchCardDetailView(watch: dev.watch)
        }
    }
}
