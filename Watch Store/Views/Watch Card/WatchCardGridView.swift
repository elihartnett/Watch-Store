//
//  WatchCardGridView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchCardGridView: View {
    
    @State var watch: Watch
    let watchTopOffset: CGFloat = 40
    
    var body: some View {
        
        VStack (spacing: 7) {
            
            Image(watch.image)
                .resizable()
                .frame(width: 129, height: 214)
            
            WatchPriceView(price: watch.price)
            
            WatchTitleView(caseType: watch.caseType)
            
            WatchBandTitleView(bandType: watch.bandType)
            
            WatchBandOptionsView(watch: watch)
            
            AddToBagView(watch: watch)
                .padding()
        }
        .overlay {
            FavoriteWatchView(watch: watch)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                .padding()
        }
        .background {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, Color(uiColor: .systemGray4)]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
                .padding(.top, watchTopOffset)
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
