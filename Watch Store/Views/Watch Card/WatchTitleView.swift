//
//  WatchTitleView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct WatchTitleView: View {
    
    let caseType: WatchCaseType
    var alignment = TextAlignment.center
    
    var body: some View {
        
        Text(Watch.getCaseTitle(caseType: caseType))
            .font(.headline)
            .fontWeight(.bold)
            .lineLimit(2)
            .multilineTextAlignment(alignment)
            .fixedSize(horizontal: false, vertical: true)
    }
}

struct WatchTitleView_Previews: PreviewProvider {
    static var previews: some View {
        WatchTitleView(caseType: dev.watch.caseType)
    }
}
