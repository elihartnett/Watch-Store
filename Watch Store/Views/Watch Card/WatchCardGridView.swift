//
//  WatchCardGridView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchCardGridView: View {
    
    @ObservedObject var watch: Watch
    let watchTopOffset: CGFloat = 40
    
    var body: some View {
        
        VStack (spacing: 7) {
            
            Image(watch.image)
                .resizable()
                .frame(width: 129, height: 214)
            
            WatchPriceView(price: watch.price)
            
            WatchTitleView(caseType: watch.caseType)
            
            WatchBandTitleView(bandType: watch.bandType)
            
            WatchBandOptionsView(watch: watch, limit: 3)

            AddToCartView(watch: watch)
                .padding()
        }
        .overlay(alignment: .topTrailing, content: {
            FavoriteWatchView(watch: watch)
                .frame(width: 29, height: 29)
                .padding(5)
        })
        .background {
            GradientBackgroundView()
        }
        .frame(height: 290)
        .padding(.top, watchTopOffset + 30)
        .padding()
    }
}

struct WatchCardGridView_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardGridView(watch: dev.watch)
    }
}
