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
                
                DetailViewAppleCareView()
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
