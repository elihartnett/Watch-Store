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
    
    let watch = Watch(caseType: .starlightAluminum, bandType: .braided, image: Constants.Image.Watch.placeHolder1, price: 399)
}

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}
