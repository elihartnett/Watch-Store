//
//  WatchCardListView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchCardListView: View {
    
    @ObservedObject var watch: Watch
    
    var body: some View {
        
        HStack {
            
            VStack (spacing: 23) {
                Image(Watch.getImageString(watch: watch))
                    .resizable()
                    .frame(width: 129, height: 214)
                
                WatchBandOptionsView(watch: watch, limit: 3)
            }
            
            Spacer()
            
            VStack (alignment: .trailing) {
                
                FavoriteWatchView(watch: watch)
                    .frame(width: 29, height: 29)
                
                WatchPriceView(price: watch.basePrice)
                
                WatchTitleView(caseType: watch.caseType, alignment: .trailing)
                
                WatchBandTitleView(bandType: watch.bandType)
                
                Spacer()
                                
                AddToCartView(watch: watch)
            }
        }
        .padding()
        .background {
            GradientBackgroundView()
        }
    }
}

struct WatchCardListView_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardListView(watch: dev.watch)
    }
}
