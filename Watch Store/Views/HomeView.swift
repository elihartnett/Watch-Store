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
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var time = 0.0
    @State var launching = true
    
    var body: some View {
        
        NavigationView {
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    switch viewType {
                        
                    case .list:
                        ForEach(watches) { watch in
                            NavigationLink {
                                WatchCardDetailView(watch: watch)
                            } label: {
                                WatchCardListView(watch: watch)
                                    .padding()
                            }
                        }
                    case .grid:
                        LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())]) {
                            ForEach(watches) { watch in
                                NavigationLink {
                                    WatchCardDetailView(watch: watch)
                                } label: {
                                    WatchCardGridView(watch: watch)
                                        .padding()
                                }
                            }
                        }
                    }
                }
                .foregroundColor(.primary)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "bag")
                }
                
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
            }
            .navigationTitle("Discover")
        }
        .overlay {
            LottieView(lottieFile: "logoAnimation")
                .ignoresSafeArea()
                .onReceive(timer) { _ in
                    time += 0.1
                    if time >= 3.5 {
                        withAnimation {
                            launching = false
                        }
                        timer.upstream.connect().cancel()
                    }
                }
                .background(.white)
                .opacity(launching ? 1 : 0)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
