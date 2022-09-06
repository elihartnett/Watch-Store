//
//  Enums.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation
import SwiftUI

enum WatchCaseType: Hashable {
    
    case aluminum(color: AluminumCaseColor)
    case stainlessSteel(color: StainlessSteelCaseColor)
    
    enum AluminumCaseColor: String {
        case starlight = "starlight"
        case midnight = "midnight"
    }
    
    enum StainlessSteelCaseColor: String {
        case graphite = "graphite"
    }
}

enum WatchCaseSize: String, Hashable {
    case regular = "41"
    case large = "45"
}

enum WatchConnectivity {
    case gps
    case gpsAndCellular
}

enum WatchBandType: Hashable {
    case sport(color: SportBandColor)
    case solo(color: SoloBandColor)
    case braided(color: BraidedBandColor)
    case leather(color: LeatherBandColor)
    case milanese(color: MilaneseBandColor)
    case nike(color: NikeBandColor)
    
    enum SportBandColor: String, Hashable {
        case red = "red"
        case navy = "navy"
        case white = "white"
        case green = "green"
        case blue = "blue"
        case yellow = "yellow"
        case black = "black"
    }

    enum SoloBandColor: String, Hashable {
        case pink = "pink"
        case green = "green"
        case yellow = "yellow"
    }

    enum BraidedBandColor: String, Hashable {
        case blue = "blue"
        case black = "black"
        case white = "white"
    }

    enum LeatherBandColor: String, Hashable {
        case black = "black"
        case brown = "brown"
        case purple = "purple"
        case green = "green"
    }

    enum MilaneseBandColor: String, Hashable {
        case black = "black"
        case silver = "silver"
        case gold = "gold"
    }

    enum NikeBandColor: String, Hashable {
        case black = "black"
        case blue = "blue"
        case brown = "brown"
        case pink = "pink"
        case white = "white"
    }
}

enum ViewType {
    case list
    case grid
}

enum Route: Hashable {
    case detail(watch: Watch)
}
