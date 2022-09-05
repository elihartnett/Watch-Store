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
}

enum WatchBandType: Hashable {
    case sport(color: SportBandColor)
    case solo(color: SoloBandColor)
    case braided(color: BraidedBandColor)
    case leather(color: LeatherBandColor)
    case stainlessSteel(color: StainlessSteelBandColor)
    case nike(color: NikeBandColor)
}

enum SportBandColor: CaseIterable, Hashable {
    case red
    case navy
    case white
    case green
    case blue
    case yellow
    case black
}

enum SoloBandColor: CaseIterable, Hashable {
    case pink
    case green
    case yellow
}

enum BraidedBandColor: CaseIterable, Hashable {
    case blue
    case black
    case white
}

enum LeatherBandColor: CaseIterable, Hashable {
    case black
    case brown
    case purple
    case green
}

enum StainlessSteelBandColor: CaseIterable, Hashable {
    case black
    case silver
    case gold
}

enum NikeBandColor: CaseIterable, Hashable {
    case black
    case blue
    case brown
    case pink
    case white
}

enum ViewType {
    case list
    case grid
}

enum Route: Hashable {
    case detail(watch: Watch)
}
