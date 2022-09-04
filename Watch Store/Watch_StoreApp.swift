//
//  Watch_StoreApp.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/20/22.
//

import SwiftUI

@main
struct Watch_StoreApp: App {
    
    @StateObject var storeModel = StoreModel()
    
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(storeModel)
        }
    }
}
