//
//  Constants.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation

enum Constants {
    
    enum Image {
        
        enum Placeholder: String {
            case grid = "grouping_grid"
            case list = "grouping_list"
        }
        
        enum Icon: String {
            case cellular = "icon_cellular"
            case compatibility = "icon_compatibility"
            case productRed = "icon_product_red"
            case wifi = "icon_wifi"
        }
        
        enum WatchCase {
            
            enum Aluminum: String {
                case midnight = "watch_aluminum_midnight"
                case starlight = "watch_aluminum_starlight"
            }
            
            enum StainlessSteel: String {
                case graphite = "watch_stainless_graphite"
            }
        }
        
        enum WatchBand {
            
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
            
            enum Milanese: String, CaseIterable {
                case black = "band_milanese_black"
                case silver = "band_milanese_silver"
                case gold = "band_milanese_gold"
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
    
    enum Color: String {
        
        case addToCart = "addToCart"
    }
    
    enum Cost: String {
        case base = "399"
        case large = "30"
        case cellular = "100"
    }
}
