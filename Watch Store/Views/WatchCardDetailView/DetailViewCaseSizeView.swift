//
//  DetailViewCaseSizeView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewCaseSizeView: View {
    
    @ObservedObject var watch: Watch
    let size: WatchCaseSize
    
    var body: some View {
        
        Button {
            watch.caseSize = size
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black, style: StrokeStyle(lineWidth: watch.caseSize == size ? 3 : 1))
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(size.rawValue) mm")
                            .bold()
                        
                        Text("Fits \(size == .regular ? "130-200" : "140-220") wrists.")
                    }
                    
                    Spacer()
                    
                    Text("$") + Text("\((watch.basePrice + (size == .regular ? 0 : 30)).formatted())")
                        .font(.title)
                        .bold()
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct DetailViewCaseSizeView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewCaseSizeView(watch: dev.watch, size: .regular)
    }
}
