//
//  ContentView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/20/22.
//

import SwiftUI

struct HomeView: View {
    
    @State var viewType: ViewType = .list
    let watches = [Watch(caseType: .starlightAluminum, bandType: .braided, image: Constants.Image.Watch.placeHolder1, price: 399), Watch(caseType: .midnightAluminum, bandType: .solo, image: Constants.Image.Watch.placeHolder2, price: 399), Watch(caseType: .midnightAluminum, bandType: .nike, image: Constants.Image.Watch.placeHolder3, price: 399), Watch(caseType: .redAluminum, bandType: .sport, image: Constants.Image.Watch.placeHolder4, price: 399), Watch(caseType: .midnightAluminum, bandType: .leather, image: Constants.Image.Watch.placeHolder5, price: 399), Watch(caseType: .midnightAluminum, bandType: .stainlessSteel, image: Constants.Image.Watch.placeHolder6, price: 399)]
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    switch viewType {
                        
                    case .list:
                        ForEach(watches) { watch in
                            WatchCardListView(watch: watch)
                                .padding()
                        }
                    case .grid:
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                            ForEach(watches) { watch in
                                WatchCardGridView(watch: watch)
                                    .padding()
                            }
                        }
                    }
                    
                }
            }
            .toolbar {
                ToolbarItem(placement: .primaryAction) {
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
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "bag")
                }
            }
            .navigationTitle("Discover")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
