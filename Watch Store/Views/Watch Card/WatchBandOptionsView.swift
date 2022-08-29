//
//  WatchBandOptionsView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchBandOptionsView: View {
    
    let watch: Watch
    
    var body: some View {
        
        HStack {
            
            switch watch.bandType {
                
            case .sport:
                ForEach(Constants.Image.WatchBand.Sport.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            case .solo:
                ForEach(Constants.Image.WatchBand.Solo.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            case .braided:
                ForEach(Constants.Image.WatchBand.Braided.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            case .leather:
                ForEach(Constants.Image.WatchBand.Leather.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            case .stainlessSteel:
                ForEach(Constants.Image.WatchBand.StainlessSteel.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            case .nike:
                ForEach(Constants.Image.WatchBand.Nike.allCases, id: \.self) { bandCase in
                    Image(bandCase.rawValue)
                        .resizable()
                        .frame(width: 19, height: 19)
                }
            }
            
            Image(systemName: "plus")
                .frame(width: 13, height: 13)
        }
    }
}

struct WatchBandOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        WatchBandOptionsView(watch: dev.watch)
    }
}
