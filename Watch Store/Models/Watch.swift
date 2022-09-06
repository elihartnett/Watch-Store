//
//  Watch.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation

class Watch: ObservableObject, Identifiable, Hashable {
    
    let id = UUID()
    let caseType: WatchCaseType
    @Published var caseSize: WatchCaseSize
    @Published var bandType: WatchBandType
    @Published var connectivity: WatchConnectivity
    @Published var basePrice: Double
    @Published var isFavorite = false
    
    
    init(caseType: WatchCaseType, caseSize: WatchCaseSize = .regular, bandType: WatchBandType, connectivity: WatchConnectivity = .gps, basePrice: Double, isFavorite: Bool = false) {
        self.caseType = caseType
        self.caseSize = caseSize
        self.bandType = bandType
        self.connectivity = connectivity
        self.basePrice = basePrice
        self.isFavorite = isFavorite
    }
    
    static func == (lhs: Watch, rhs: Watch) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func getImageString(watch: Watch) -> String {
        var imageString = "watch_"
        
        switch watch.caseType  {
        case .aluminum(color: let color):
            imageString += "aluminum_\(color.rawValue)_"
            
        case .stainlessSteel(color: let color):
            imageString += "stainless_\(color.rawValue)_"
        }
        
        switch watch.bandType {
        case .sport(color: let color):
            imageString += "sport_\(color.rawValue)"
            
        case .solo(color: let color):
            imageString += "solo_\(color.rawValue)"
            
        case .braided(color: let color):
            imageString += "braided_\(color.rawValue)"
            
        case .leather(color: let color):
            imageString += "leather_\(color.rawValue)"
            
        case .milanese(color: let color):
            imageString += "milanese_\(color.rawValue)"
            
        case .nike(color: let color):
            imageString += "nike_\(color.rawValue)"
        }
        
        return imageString
    }
    
    static func getCaseTitle(caseType: WatchCaseType) -> String {
        
        switch caseType {
        case .aluminum(color: .midnight):
            return "Midnight Aluminum Case"
        case .aluminum(color: .starlight):
            return "Starlight Aluminum Case"
        case .stainlessSteel(color: .graphite):
            return "Graphite Stainless Steel"
        }
    }
    
    static func getBandTitle(bandType: WatchBandType) -> String {
        
        switch bandType {
        case .sport:
            return "Sport Band"
            
        case .solo:
            return "Solo Loop"
            
        case .braided:
            return "Braided Solo Loop"
            
        case .leather:
            return "Leather Band"
            
        case .milanese:
            return "Milanese Steel Band"
            
        case .nike:
            return "Nike Band"
        }
    }
    
    static func getBandImages(bandType: WatchBandType, limit: Int?) -> ([(imageString: String, bandType: WatchBandType)], moreAvailable: Bool) {
        var imageStrings: [(String, WatchBandType)] = []
        switch bandType {
        case .sport:
            imageStrings = [
                (Constants.Image.WatchBand.Sport.red.rawValue, .sport(color: .red)),
                (Constants.Image.WatchBand.Sport.navy.rawValue, .sport(color: .navy)),
                (Constants.Image.WatchBand.Sport.white.rawValue, .sport(color: .white)),
                (Constants.Image.WatchBand.Sport.green.rawValue, .sport(color: .green)),
                (Constants.Image.WatchBand.Sport.blue.rawValue, .sport(color: .blue)),
                (Constants.Image.WatchBand.Sport.yellow.rawValue, .sport(color: .yellow)),
                (Constants.Image.WatchBand.Sport.black.rawValue, .sport(color: .black))
            ]
            
        case .solo:
            imageStrings = [
                (Constants.Image.WatchBand.Solo.pink.rawValue, .solo(color: .pink)),
                (Constants.Image.WatchBand.Solo.green.rawValue, .solo(color: .green)),
                (Constants.Image.WatchBand.Solo.yellow.rawValue, .solo(color: .yellow))
            ]
            
        case .braided:
            imageStrings = [
                (Constants.Image.WatchBand.Braided.blue.rawValue, .braided(color: .blue)),
                (Constants.Image.WatchBand.Braided.black.rawValue, .braided(color: .black)),
                (Constants.Image.WatchBand.Braided.white.rawValue, .braided(color: .white))
            ]
            
        case .leather:
            imageStrings = [
                (Constants.Image.WatchBand.Leather.black.rawValue, .leather(color: .black)),
                (Constants.Image.WatchBand.Leather.brown.rawValue, .leather(color: .brown)),
                (Constants.Image.WatchBand.Leather.purple.rawValue, .leather(color: .purple)),
                (Constants.Image.WatchBand.Leather.green.rawValue, .leather(color: .green))
            ]
            
        case .milanese:
            imageStrings = [
                (Constants.Image.WatchBand.Milanese.black.rawValue, .milanese(color: .black)),
                (Constants.Image.WatchBand.Milanese.silver.rawValue, .milanese(color: .silver)),
                (Constants.Image.WatchBand.Milanese.gold.rawValue, .milanese(color: .gold))            ]
            
        case .nike:
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
    
    static func getBandDescription(bandType: WatchBandType) -> String {
        switch bandType {
        case .sport:
            return "The Sport Band is made from a durable yet surprisingly soft high-performance fluoroelastomer with an innovative pin-and-tuck closure."
            
        case .solo:
            return "The Solo Loop is made from soft, stretchable silicone and designed for ultracomfort with no clasps or buckles."
            
        case .braided:
            return "The Braided Solo Loop is made from recycled yarn and silicone threads for an ultracomfortable, stretchable design with no clasps or buckles."
            
        case .leather:
            return "The Leather Link is made from handcrafted Roux Granada leather with no clasps or buckles, and has embedded magnets for a secure and adjustable fit."
            
        case .milanese:
            return "The Milanese Loop is made from a smooth stainless steel mesh that’s fully magnetic, so it’s infinitely adjustable for a perfect fit."
            
        case .nike:
            return "The Nike Sport Band is made from a durable high-performance fluoroelastomer with compression-molded perforations for breathability."
        }
    }
    
    static func getCaseDescription(caseType: WatchCaseType) -> String {
        switch caseType {
        case .aluminum:
            return "The aluminum case is lightweight and made from 100 percent recycled aerospace-grade alloy."
            
        case .stainlessSteel:
            return "The stainless steel case is durable and polished to a shiny, mirror-like finish."
        }
    }
    
    static func getPrice(watch: Watch) -> String {
        var price = watch.basePrice
        
        switch watch.caseSize {
        case .regular:
            break
        case .large:
            switch watch.caseType {
            case .aluminum:
                price += 30
            case .stainlessSteel:
                price += 50
            }
        }
        
        switch watch.connectivity {
        case .gps:
            break
        case .gpsAndCellular:
            price += 100
        }
        
        return String(price)
    }
}
