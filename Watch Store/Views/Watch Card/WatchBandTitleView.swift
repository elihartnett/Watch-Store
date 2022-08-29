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
        
        Group {
            switch bandType {
                
            case .sport:
                Text("Sport Band")
            case .solo:
                Text("Solo Band")
            case .braided:
                Text("Braided Solo Band")
            case .leather:
                Text("Leather Band")
            case .stainlessSteel:
                Text("Stainless Steel Band")
            case .nike:
                Text("Nike Band")
            }
        }
        .lineLimit(1)
        .minimumScaleFactor(0.75)
    }
}

struct WatchBandTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WatchBandTitleView(bandType: dev.watch.bandType)
    }
}
