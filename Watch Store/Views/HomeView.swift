//
//  ContentView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/20/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewType: ViewType = .list
    let watches = [Watch(watchCase: .starlightAluminum, image: Constants.Image.Watch.placeHolder1, bandType: .braided), Watch(watchCase: .midnightAluminum, image: Constants.Image.Watch.placeHolder2, bandType: .solo)]
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
            HStack {
                
                Image(systemName: "bag")
                
                Spacer()
                
                Image(systemName: viewType == .list ? "rectangle.grid.1x2.fill" : "square.grid.2x2.fill")
                    .onTapGesture {
                        withAnimation {
                            if viewType == .list {
                                viewType = .grid
                            }
                            else {
                                viewType = .list
                            }
                        }
                    }
            }
            
            Text("Discover")
                .fontWeight(.bold)
                         
            if viewType == .list {
                
                VStack {
                    
                    ForEach(watches) { watch in
                        
                        WatchCardView(watch: watch)
                            .frame(maxWidth: viewType == .list ? .infinity : UIScreen.main.bounds.width / 3)
                    }
                }
            }
            
            if viewType == .grid {
                
                HStack {
                    
                    ForEach(watches) { watch in
                        
                        WatchCardView(watch: watch)
                            .frame(maxWidth: viewType == .list ? .infinity : UIScreen.main.bounds.width / 3)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
