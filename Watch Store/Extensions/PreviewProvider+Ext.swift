//
//  PreviewProvider+Ext.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/21/22.
//

import Foundation
import SwiftUI

class DeveloperPreview {
    
    static let instance = DeveloperPreview()
    private init() {}
    
    let watch = Watch(watchCase: .starlightAluminum, image: Constants.Image.Watch.placeHolder1, bandType: .braided)
}

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}
