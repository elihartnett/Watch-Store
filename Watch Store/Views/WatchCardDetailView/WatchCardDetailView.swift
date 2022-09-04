//
//  WatchCardDetailView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/29/22.
//

import SwiftUI

struct WatchCardDetailView: View {
    
    @EnvironmentObject var storeModel: StoreModel
    @ObservedObject var watch: Watch
    @Binding var navigationPath: NavigationPath
    let cardOffset: CGFloat = 30
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 10) {
                
                DetailViewImageView(watch: watch)
                
                DetailViewTitleView(watch: watch)
                
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    
                    Text("5.0 ").bold() + Text("(999 Reviews)")
                        .fontWeight(.light)
                }
                
                Text("The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy. \n\nThe Nike Sport Band is made from a durable high-performance fluoroelastomer with compression-molded perforations for breathability.")
                    .fontWeight(.light)
                
                Group {
                    Text("Case Sizes")
                        .font(.title2)
                        .bold()
                    
                    DetailViewCaseSizeView(watch: watch)
                    
                    DetailViewCaseSizeView(watch: watch)
                }
                
                Group {
                    Text("Connectivity")
                        .font(.title2)
                        .bold()
                    
                    HStack {
                        DetailViewConnectivityView(watch: watch)
                        
                        DetailViewConnectivityView(watch: watch)
                    }
                }
                
                Group {
                    Text("Band Colors")
                        .font(.title2)
                        .bold()
                    
                    DetailViewBandOptionsView(watch: watch)
                }
            }
            .padding(.horizontal)
        }
        .toolbar {
            
            ToolbarItem(placement: .navigationBarLeading) {
                CartToolBarItem()
            }
            
            ToolbarItem(placement: .primaryAction) {
                Image(systemName: "x.circle.fill")
                    .onTapGesture {
                        navigationPath.removeLast()
                    }
            }
        }
    }
}

struct WatchCardDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            WatchCardDetailView(watch: dev.watch, navigationPath: .constant(NavigationPath()))
                .environmentObject(StoreModel())
        }
    }
}

struct DetailViewTitleView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Text("\(watch.caseType.rawValue) case with \(getWatchCaseTypeString()) Band")
            .font(.title)
            .bold()
    }
    
    func getWatchCaseTypeString() -> String {
        switch watch.bandType {
        case .sport:
            return "Sport"
        case .solo:
            return "Solo"
        case .braided:
            return "Braided"
        case .leather:
            return "Leather"
        case .stainlessSteel:
            return "Stainless Steel"
        case .nike:
            return "Nike"
        }
    }
}

struct DetailViewCaseSizeView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Button {
#warning("link to watch size and thicken border")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("41 mm")
                            .bold()
                        Text("Fits 130-200mm wrists.")
                    }
                    
                    Spacer()
                    
                    Text("$") + Text(watch.price.description)
                        .font(.title)
                        .bold()
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct DetailViewConnectivityView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Button {
#warning("link to watch size and thicken border")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
                
                VStack {
                    Text("GPS")
                        .bold()
                    
                    Image(Constants.Image.Icon.wifi)
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

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
