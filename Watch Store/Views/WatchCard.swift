//
//  WatchCard.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import SwiftUI

struct WatchCard: View {
    
    let watch: Watch
    
    var body: some View {
        
        ViewThatFits {
            // List view
            HStack {
                VStack (spacing: 23) {
                    Image(watch.image)
                        .resizable()
                        .frame(width: 129, height: 214)
                    
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
                
                VStack {
                    Image(Constants.Image.Icon.heart)
                    Text("$") + Text("399")
                    switch watch.watchCase {
                    case .starlightAluminum:
                        Text("Starlight Aluminum Case")
                    case .midnightAluminum:
                        Text("Midnight Aluminum Case")
                    case.redAluminum:
                        Text("Red Aluminum Case")
                    }
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
                    Button {
                        #warning("Add to bag")
                    } label: {
                        Text("Add to cart")
                            .foregroundColor(.white)
                            .background(
                                Color(Constants.Color.addToBag)
                                    .frame(width: 152, height: 45)
                            )
                    }
                    
                }
            }
            .frame(height: 239)
            
            // Grid view
            VStack {
                Text("Grid view")
            }
            .frame(height: 290)
        }
        .frame(maxWidth: .infinity)
        .background {
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white, .gray]), startPoint: .top, endPoint: .bottom))
        }
    }
}

struct WatchCard_Previews: PreviewProvider {
    static var previews: some View {
        WatchCard(watch: dev.watch)
    }
}
