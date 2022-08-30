//
//  GradientBackgroundView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/29/22.
//

import SwiftUI

struct GradientBackgroundView: View {
    var body: some View {
        
        Rectangle()
            .fill(LinearGradient(gradient: Gradient(colors: [Color(uiColor: .systemGray6).opacity(0.5), Color(uiColor: .systemGray4)]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(10)
    }
}

struct GradientBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        GradientBackgroundView()
    }
}
