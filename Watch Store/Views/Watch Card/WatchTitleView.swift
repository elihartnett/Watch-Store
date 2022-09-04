//
//  WatchTitleView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchTitleView: View {
    
    let caseType: WatchCaseType
    let storeModel = StoreModel()
    
    var body: some View {
        
        Text(storeModel.getCaseTitle(caseType: caseType))
        .fontWeight(.bold)
        .lineLimit(1)
        .minimumScaleFactor(0.75)
    }
}

struct WatchTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WatchTitleView(caseType: dev.watch.caseType)
    }
}
