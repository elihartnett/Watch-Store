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
    let bandType: WatchBandType
    let image: String
    let price: Double
    @Published var isFavorite = false
    
    init(caseType: WatchCaseType, bandType: WatchBandType, image: String, price: Double, isFavorite: Bool = false) {
        self.caseType = caseType
        self.bandType = bandType
        self.image = image
        self.price = price
        self.isFavorite = isFavorite
    }
    
    static func == (lhs: Watch, rhs: Watch) -> Bool {
        return lhs.id == rhs.id
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}
