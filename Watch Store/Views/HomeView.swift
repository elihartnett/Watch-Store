//
//  ContentView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/20/22.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var storeModel: StoreModel
    @State var viewType: ViewType = .list
    @State var gridItemWidth = UIScreen.main.bounds.size.width
    @State var adaptiveColumns = [GridItem(.adaptive(minimum: UIScreen.main.bounds.width - 40))]
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    @State var time = 0.0
    @State var launching = true
    @State var navigationPath = NavigationPath()
    
    var body: some View {
        
        NavigationStack(path: $navigationPath) {
            
            ScrollView {
                
                LazyVGrid(columns: adaptiveColumns) {
                    
                    ForEach(storeModel.watches) { watch in
                        
                        WatchCardView(watch: watch, viewType: viewType, gridItemWidth: gridItemWidth)
                    }
                }
                .foregroundColor(.primary)
                .navigationDestination(for: Route.self) { route in
                    switch route {
                    case .detail(let watch):
                        WatchCardDetailView(watch: watch, navigationPath: $navigationPath)
                    }
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    CartToolBarItem()
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
            .onChange(of: viewType) { _ in
                switch viewType {
                case .list:
                    gridItemWidth = UIScreen.main.bounds.size.width
                case .grid:
                    gridItemWidth = (UIScreen.main.bounds.size.width - (20*3)) / 2
                }
                withAnimation {
                    adaptiveColumns = [GridItem(.adaptive(minimum: gridItemWidth))]
                }
            }
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
            .environmentObject(StoreModel())
    }
}
