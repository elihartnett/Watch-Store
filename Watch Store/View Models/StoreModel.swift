//
//  StoreModel.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/30/22.
//

import Foundation

class StoreModel: ObservableObject {
    
    @Published var watches = [Watch(caseType: .starlightAluminum, bandType: .braided(color: .blue), image: Constants.Image.Watch.placeHolder1, price: 399), Watch(caseType: .midnightAluminum, bandType: .solo(color: .pink), image: Constants.Image.Watch.placeHolder2, price: 399), Watch(caseType: .midnightAluminum, bandType: .nike(color: .black), image: Constants.Image.Watch.placeHolder3, price: 399), Watch(caseType: .starlightAluminum, bandType: .sport(color: .red), image: Constants.Image.Watch.placeHolder4, price: 399), Watch(caseType: .midnightAluminum, bandType: .leather(color: .black), image: Constants.Image.Watch.placeHolder5, price: 399), Watch(caseType: .midnightAluminum, bandType: .stainlessSteel(color: .black), image: Constants.Image.Watch.placeHolder6, price: 399)]
    @Published var cart: [Watch] = []
    
    func getCaseTitle(caseType: WatchCaseType) -> String {
        
        switch caseType {
        case .starlightAluminum:
            return "Starlight Aluminum Case"
            
        case .midnightAluminum:
            return "Midnight Aluminum Case"
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
    
    func getBandImages(watchBandType: WatchBandType, limit: Int?) -> ([(imageString: String, bandType: WatchBandType)], moreAvailable: Bool) {
        var imageStrings: [(String, WatchBandType)] = []
        switch watchBandType {
        case .sport(_):
            imageStrings = [
                (Constants.Image.WatchBand.Sport.red.rawValue, .sport(color: .red)),
                (Constants.Image.WatchBand.Sport.navy.rawValue, .sport(color: .navy)),
                (Constants.Image.WatchBand.Sport.white.rawValue, .sport(color: .white)),
                (Constants.Image.WatchBand.Sport.green.rawValue, .sport(color: .green)),
                (Constants.Image.WatchBand.Sport.blue.rawValue, .sport(color: .blue)),
                (Constants.Image.WatchBand.Sport.yellow.rawValue, .sport(color: .yellow)),
                (Constants.Image.WatchBand.Sport.black.rawValue, .sport(color: .black))
            ]
            
        case .solo(_):
            imageStrings = [
                (Constants.Image.WatchBand.Solo.pink.rawValue, .solo(color: .pink)),
                (Constants.Image.WatchBand.Solo.green.rawValue, .solo(color: .green)),
                (Constants.Image.WatchBand.Solo.yellow.rawValue, .solo(color: .yellow))
            ]
            
        case .braided(_):
            imageStrings = [
                (Constants.Image.WatchBand.Braided.blue.rawValue, .braided(color: .blue)),
                (Constants.Image.WatchBand.Braided.black.rawValue, .braided(color: .black)),
                (Constants.Image.WatchBand.Braided.white.rawValue, .braided(color: .white))
            ]
            
        case .leather(_):
            imageStrings = [
                (Constants.Image.WatchBand.Leather.black.rawValue, .leather(color: .black)),
                (Constants.Image.WatchBand.Leather.brown.rawValue, .leather(color: .brown)),
                (Constants.Image.WatchBand.Leather.purple.rawValue, .leather(color: .purple)),
                (Constants.Image.WatchBand.Leather.green.rawValue, .leather(color: .green))
            ]
            
        case .stainlessSteel(_):
            imageStrings = [
                (Constants.Image.WatchBand.StainlessSteel.black.rawValue, .stainlessSteel(color: .black)),
                (Constants.Image.WatchBand.StainlessSteel.silver.rawValue, .stainlessSteel(color: .silver)),
                (Constants.Image.WatchBand.StainlessSteel.gold.rawValue, .stainlessSteel(color: .gold))            ]
            
        case .nike(_):
            imageStrings = [
                (Constants.Image.WatchBand.Nike.black.rawValue, .nike(color: .black)),
                (Constants.Image.WatchBand.Nike.blue.rawValue, .nike(color: .blue)),
                (Constants.Image.WatchBand.Nike.brown.rawValue, .nike(color: .brown)),
                (Constants.Image.WatchBand.Nike.pink.rawValue, .nike(color: .pink)),
                (Constants.Image.WatchBand.Nike.white.rawValue, .nike(color: .white))
            ]
        }
        
        var moreAvailable = false
        if let limit {
            if imageStrings.count > limit {
                imageStrings.removeSubrange(limit..<imageStrings.count)
                moreAvailable = true
                
            }
        }
        
        return (imageStrings, moreAvailable)
    }
}
