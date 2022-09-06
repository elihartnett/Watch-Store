//
//  DetailViewImageView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/30/22.
//

import SwiftUI

struct DetailViewImageView: View {
    
    @ObservedObject var watch: Watch
    let cardOffset: CGFloat = 20
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            GradientBackgroundView()
                .frame(height: 265)
            
            Image(Watch.getImageString(watch: watch))
                .resizable()
                .scaledToFit()
                .frame(width: 208, height: 352)
                .offset(y: -cardOffset)
        }
        .padding(.top, cardOffset)
        .overlay(alignment: .bottomTrailing) {
            FavoriteWatchView(watch: watch)
                .frame(width: 38, height: 38)
                .padding()
        }
    }
}

struct DetailViewImageView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewImageView(watch: dev.watch)
    }
}
