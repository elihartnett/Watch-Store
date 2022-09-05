//
//  Constants.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation

struct Constants {
    
    struct Image {
        
        struct Placeholder {
            static let grid = "grouping_grid"
            static let list = "grouping_list"
        }
        
        struct Icon {
            static let cellular = "icon_cellular"
            static let compatibility = "icon_compatibility"
            static let productRed = "icon_product_red"
            static let wifi = "icon_wifi"
        }
        
        struct Watch {
            static let placeHolder1 = "watch1"
            static let placeHolder2 = "watch2"
            static let placeHolder3 = "watch3"
            static let placeHolder4 = "watch4"
            static let placeHolder5 = "watch5"
            static let placeHolder6 = "watch6"
        }
        
        struct WatchBand {
            
            enum Sport: String, CaseIterable {
                case red = "band_sport_red"
                case navy = "band_sport_navy"
                case white = "band_sport_white"
                case green = "band_sport_green"
                case blue = "band_sport_blue"
                case yellow = "band_sport_yellow"
                case black = "band_sport_black"
            }
            
            enum Solo: String, CaseIterable {
                case green = "band_solo_green"
                case pink = "band_solo_pink"
                case yellow = "band_solo_yellow"
            }
            
            enum Braided: String, CaseIterable {
                case black = "band_braided_black"
                case blue = "band_braided_blue"
                case white = "band_braided_white"
            }
            
            enum Leather: String, CaseIterable {
                case black = "band_leather_black"
                case brown = "band_leather_brown"
                case purple = "band_leather_purple"
                case green = "band_leather_green"
            }
            
            enum StainlessSteel: String, CaseIterable {
                case black = "band_stainless_black"
                case silver = "band_stainless_silver"
                case gold = "band_stainless_gold"
            }
            
            enum Nike: String, CaseIterable {
                case black = "band_nike_black"
                case blue = "band_nike_blue"
                case brown = "band_nike_brown"
                case pink = "band_nike_pink"
                case white = "band_nike_white"
            }
        }
    }
    
    struct Color {
        
        static let addToCart = "addToCart"
    }
}
