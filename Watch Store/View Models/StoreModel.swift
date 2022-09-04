//
//  StoreModel.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/30/22.
//

import Foundation

class StoreModel: ObservableObject {
    
    @Published var watches = [Watch(caseType: .starlightAluminum, bandType: .braided(color: .blue), image: Constants.Image.Watch.placeHolder1, price: 399), Watch(caseType: .midnightAluminum, bandType: .solo(color: .pink), image: Constants.Image.Watch.placeHolder2, price: 399), Watch(caseType: .midnightAluminum, bandType: .nike(color: .unknown), image: Constants.Image.Watch.placeHolder3, price: 399), Watch(caseType: .redAluminum, bandType: .sport(color: .red), image: Constants.Image.Watch.placeHolder4, price: 399), Watch(caseType: .midnightAluminum, bandType: .leather(color: .unknown), image: Constants.Image.Watch.placeHolder5, price: 399), Watch(caseType: .midnightAluminum, bandType: .stainlessSteel(color: .unknown), image: Constants.Image.Watch.placeHolder6, price: 399)]
    @Published var cart: [Watch] = []
    
    func getCaseTitle(caseType: WatchCaseType) -> String {
        
        switch caseType {
        case .starlightAluminum:
            return "Starlight Aluminum Case"
            
        case .midnightAluminum:
            return "Midnight Aluminum Case"
            
        case.redAluminum:
            return "Red Aluminum Case"
        }
    }
    
    func getBandTitle(bandType: WatchBandType) -> String {
        
        switch bandType {
        case .sport:
            return "Sport Band"
            
        case .solo:
            return "Solo Band"
            
        case .braided:
            return "Braided Solo Band"
            
        case .leather:
            return "Leather Band"
            
        case .stainlessSteel:
            return "Stainless Steel Band"
            
        case .nike:
            return "Nike Band"
        }
    }
}
