//
//  WatchCardListView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchCardListView: View {
    
    @ObservedObject var watch: Watch
    let watchTopOffset: CGFloat = 20
    
    var body: some View {
        
        HStack {
            
            VStack (spacing: 23) {
                Image(watch.image)
                    .resizable()
                    .frame(width: 129, height: 214)
                
                WatchBandOptionsView(watch: watch)
            }
            .padding(.leading)
            .offset(y: -watchTopOffset)
            
            Spacer()
            
            VStack (alignment: .trailing) {
                
                FavoriteWatchView(watch: watch)
                    .frame(width: 29, height: 29)
                
                WatchPriceView(price: watch.price)
                
                WatchTitleView(caseType: watch.caseType)
                
                WatchBandTitleView(bandType: watch.bandType)
                
                Spacer()
                
                AddToCartView(watch: watch)
            }
            .padding()
        }
        .frame(height: 239)
        .frame(maxWidth: .infinity)
        .background {
            GradientBackgroundView()
        }
        .padding(.top, watchTopOffset)
    }
}

struct WatchCardListView_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardListView(watch: dev.watch)
    }
}
