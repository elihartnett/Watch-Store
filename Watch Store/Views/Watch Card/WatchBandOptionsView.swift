//
//  WatchBandOptionsView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct WatchBandOptionsView: View {
    
    @ObservedObject var watch: Watch
    var limit: Int?
    var size = CGSize(width: 20, height: 20)
    
    let selectionPadding: CGFloat = 5
    @State var watchBands: [(String, WatchBandType)] = []
    @State var moreAvailable = false
    
    var body: some View {
        
        HStack {
            ForEach(watchBands, id: \.0) { (imageString, bandType) in
                Image(imageString)
                    .resizable()
                    .frame(width: size.width, height: size.height)
                    .onTapGesture {
                        withAnimation {
                            watch.bandType = bandType
                        }
                    }
                    .background {
                        Circle()
                            .stroke(.black)
                            .frame(width: size.width + (watch.bandType == bandType ? selectionPadding : 0), height: size.height + (watch.bandType == bandType ? selectionPadding : 0))
                    }
            }
            
            if moreAvailable {
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: size.width, height: size.height)
            }
        }
        .onAppear {
            (watchBands, moreAvailable) = Watch.getBandImages(watchBandType: watch.bandType, limit: limit)
        }
    }
}

struct WatchBandOptionsView_Previews: PreviewProvider {
    static var previews: some View {
        WatchBandOptionsView(watch: dev.watch)
            .environmentObject(StoreModel())
    }
}
