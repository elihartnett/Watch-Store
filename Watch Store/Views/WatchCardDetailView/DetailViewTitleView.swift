//
//  DetailViewTitleView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewTitleView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Text("\(watch.caseType.rawValue) case with \(getWatchCaseTypeString()) Band")
            .font(.title)
            .bold()
    }
    
    func getWatchCaseTypeString() -> String {
        switch watch.bandType {
        case .sport:
            return "Sport"
        case .solo:
            return "Solo"
        case .braided:
            return "Braided"
        case .leather:
            return "Leather"
        case .stainlessSteel:
            return "Stainless Steel"
        case .nike:
            return "Nike"
        }
    }
}

struct DetailViewTitleView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewTitleView(watch: dev.watch)
    }
}
