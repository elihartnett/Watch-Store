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
                case black = "band_regular_black"
                case blue = "band_regular_blue"
                case brown = "band_regular_brown"
                case pink = "band_regular_pink"
                case white = "band_regular_white"
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
                case empty = ""
            }
            
            enum StainlessSteel: String, CaseIterable {
                case empty = ""
            }
            
            enum Nike: String, CaseIterable {
                case empty = ""
            }
        }
    }
    
    struct Color {
        
        static let addToCart = "addToCart"
    }
}
