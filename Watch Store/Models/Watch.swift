//
//  Watch.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation

struct Watch: Identifiable {
    let id = UUID()
    let caseType: WatchCaseType
    let bandType: WatchBandType
    let image: String
    let price: Double
    var isFavorite = false
}
