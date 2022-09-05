//
//  WatchBandTitleView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchBandTitleView: View {
    
    let bandType: WatchBandType
    
    var body: some View {
        
        Text(Watch.getBandTitle(bandType: bandType))
        .lineLimit(1)
        .minimumScaleFactor(0.75)
    }
}

struct WatchBandTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WatchBandTitleView(bandType: dev.watch.bandType)
    }
}
