//
//  FavoriteWatchView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct FavoriteWatchView: View {
    
    @State var watch: Watch
    
    var body: some View {
        
        Image(systemName: watch.isFavorite ? "heart.fill" : "heart")
            .onTapGesture {
                watch.isFavorite.toggle()
            }
    }
}

struct FavoriteWatchView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteWatchView(watch: dev.watch)
    }
}
