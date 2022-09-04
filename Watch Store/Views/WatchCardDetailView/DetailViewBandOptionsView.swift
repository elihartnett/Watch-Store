//
//  DetailViewBandOptionsView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewBandOptionsView: View {
    
    let watch: Watch
    @State var selectedBand: WatchBandType?
    
    var body: some View {
        
        HStack {
            
            switch watch.bandType {
                
            case .sport:
                ForEach(Constants.Image.WatchBand.Sport.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            case .solo:
                ForEach(Constants.Image.WatchBand.Solo.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            case .braided:
                ForEach(Constants.Image.WatchBand.Braided.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            case .leather:
                ForEach(Constants.Image.WatchBand.Leather.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            case .stainlessSteel:
                ForEach(Constants.Image.WatchBand.StainlessSteel.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            case .nike:
                ForEach(Constants.Image.WatchBand.Nike.allCases, id: \.self) { band in
                    Image(band.rawValue)
                        .resizable()
                        .frame(width: 32, height: 32)
                }
            }
        }
    }
}


struct DetailViewBandOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewBandOptionsView(watch: dev.watch)
    }
}
