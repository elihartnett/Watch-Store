//
//  Enums.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation
import SwiftUI

enum WatchCaseType: String, Hashable {
    case starlightAluminum = "Starlight Aluminum"
    case midnightAluminum = "Midnight Aluminum"
    case redAluminum = "Red Aluminum"
}

enum WatchBandType: Hashable {
    case sport(color: SportBandColor)
    case solo(color: SoloBandColor)
    case braided(color: BraidedBandColor)
    case leather(color: LeatherBandColor)
    case stainlessSteel(color: StainlessSteelBandColor)
    case nike(color: NikeBandColor)
}

enum SportBandColor: Hashable {
    case red
    case black
    case blue
    case brown
    case pink
    case white
}

enum SoloBandColor: Hashable {
    case pink
    case green
    case yellow
}

enum BraidedBandColor: Hashable {
    case black
    case blue
    case white
}

enum LeatherBandColor: Hashable {
    case unknown
}

enum StainlessSteelBandColor: Hashable {
    case unknown
}

enum NikeBandColor: Hashable {
    case unknown
}

enum ViewType {
    case list
    case grid
}

enum Route: Hashable {
    case detail(watch: Watch)
}
