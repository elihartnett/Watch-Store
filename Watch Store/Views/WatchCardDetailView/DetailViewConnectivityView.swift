//
//  DetailViewConnectivityView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewConnectivityView: View {
    
    @ObservedObject var watch: Watch
    let connectivity: WatchConnectivity
    
    var body: some View {
        
        Button {
            watch.connectivity = connectivity
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, style: StrokeStyle(lineWidth: watch.connectivity == connectivity ? 3 : 1))

                VStack {
                    Text(connectivity == .gps ? "GPS" : "GPS + Cellular")
                        .bold()
                    
                    HStack {
                        Image(Constants.Image.Icon.wifi.rawValue)
                        
                        if connectivity == .gpsAndCellular {
                            Image(systemName: "plus")
                            
                            Image(Constants.Image.Icon.cellular.rawValue)
                        }
                    }
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct DetailViewConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewConnectivityView(watch: dev.watch, connectivity: .gpsAndCellular)
    }
}
