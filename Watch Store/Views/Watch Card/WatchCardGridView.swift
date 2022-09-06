//
//  WatchCardGridView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchCardGridView: View {
    
    @ObservedObject var watch: Watch
    
    var body: some View {
        
        VStack (spacing: 7) {
            
            Image(Watch.getImageString(watch: watch))
                .resizable()
                .frame(width: 129, height: 214)
            
            WatchPriceView(price: watch.basePrice)
            
            WatchTitleView(caseType: watch.caseType)
            
            WatchBandTitleView(bandType: watch.bandType)
            
            WatchBandOptionsView(watch: watch, limit: 3)

            AddToCartView(watch: watch)
                .padding(.top)
        }
        .overlay(alignment: .topTrailing, content: {
            FavoriteWatchView(watch: watch)
                .frame(width: 20, height: 20)
        })
        .padding()
        .background {
            GradientBackgroundView()
        }
    }
}

struct WatchCardGridView_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardGridView(watch: dev.watch)
    }
}
