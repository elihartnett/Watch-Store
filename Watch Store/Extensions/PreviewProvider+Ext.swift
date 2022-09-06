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
    let storeModel: StoreModel
    let watch: Watch
    
    private init() {
        self.storeModel = StoreModel()
        self.watch = storeModel.watches.first!
    }
}

extension PreviewProvider {
    static var dev: DeveloperPreview {
        return DeveloperPreview.instance
    }
}
