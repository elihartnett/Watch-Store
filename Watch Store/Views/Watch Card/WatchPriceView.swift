//
//  WatchPriceView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchPriceView: View {
    
    let price: Double
    
    var body: some View {
        
        HStack(spacing: 0) {
            
            Text("$")
            
            Text(price.formatted(.number))
                .fontWeight(.heavy)
                .font(.largeTitle)
        }
        .minimumScaleFactor(0.75)
    }
}

struct WatchPriceView_Previews: PreviewProvider {
    static var previews: some View {
        WatchPriceView(price: dev.watch.basePrice)
    }
}
