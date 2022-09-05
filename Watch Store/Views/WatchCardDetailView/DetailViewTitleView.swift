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
        
        Text("\(Watch.getCaseTitle(caseType: watch.caseType)) With \(Watch.getBandTitle(bandType: watch.bandType))")
            .font(.title)
            .bold()
    }
}

struct DetailViewTitleView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewTitleView(watch: dev.watch)
    }
}
