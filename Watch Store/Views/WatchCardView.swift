//
//  WatchCard.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import SwiftUI

struct WatchCardView: View {
    
    let watch: Watch
    
    var body: some View {
        
        ViewThatFits {
            
            HStack (alignment: .bottom) {
                WatchCardListView(watch: watch)
            }
            .frame(height: 239)
            .frame(maxWidth: .infinity)
            
            VStack {
                WatchCardGridView(watch: watch)
            }
            .frame(height: 290)
        }
        .background {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, Color(uiColor: .systemGray4)]), startPoint: .top, endPoint: .bottom))
                .cornerRadius(10)
        }
    }
}

struct WatchCard_Previews: PreviewProvider {
    static var previews: some View {
        WatchCardView(watch: dev.watch)
    }
}

struct WatchCardListView: View {
    
    @State var watch: Watch
    
    var body: some View {
        
        VStack (spacing: 23) {
            Image(watch.image)
                .resizable()
                .frame(width: 129, height: 214)
            
            WatchBandOptionsView(watch: watch)
        }
        .padding(.leading)
        .offset(y: -20)
        
        Spacer()
        
        VStack (alignment: .trailing) {
            Image(systemName: watch.isFavorite ? "heart" : "heart.fill")
                .onTapGesture {
                    watch.isFavorite.toggle()
                }
            
            Text("$") + Text("399")
                .fontWeight(.heavy)
            
            WatchTitleView(watch: watch)
                .fontWeight(.bold)
            
            WatchBandTitleView(watch: watch)
            
            Spacer()
            
            Button {
#warning("Add to bag")
            } label:{
                Color(Constants.Color.addToBag)
                    .frame(width: 152, height: 45)
                    .cornerRadius(10)
                    .overlay {
                        Text("Add to cart")
                            .foregroundColor(.white)
                    }
            }
        }
        .padding(.trailing)
        .offset(y: -20)
    }
}

struct WatchCardGridView: View {
    
    @State var watch: Watch
    
    var body: some View {
        
        VStack (spacing: 7) {
            Image(watch.image)
                .resizable()
                .frame(width: 129, height: 214)
            
            Text("$") + Text("399")
                .fontWeight(.heavy)
            
            WatchTitleView(watch: watch)
                .fontWeight(.bold)
            
            WatchBandTitleView(watch: watch)
            
            WatchBandOptionsView(watch: watch)
            
            
            Button {
                #warning("Add to bag")
            } label:{
                Color(Constants.Color.addToBag)
                    .frame(width: 152, height: 45)
                    .cornerRadius(10)
                    .overlay {
                        Text("Add to cart")
                            .foregroundColor(.white)
                    }
            }
        }
        .offset(y: -50)
    }
}

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

struct WatchTitleView: View {
    
    let watch: Watch
    
    var body: some View {
        
        switch watch.watchCase {
            
        case .starlightAluminum:
            Text("Starlight Aluminum Case")
            
        case .midnightAluminum:
            Text("Midnight Aluminum Case")
            
        case.redAluminum:
            Text("Red Aluminum Case")
        }
    }
}

struct WatchBandTitleView: View {
    
    let watch: Watch
    
    var body: some View {
        
        switch watch.bandType {
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
}
