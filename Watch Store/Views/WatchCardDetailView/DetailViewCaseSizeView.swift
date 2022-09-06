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
                    
                    HStack(spacing: 1) {
                        Text("$")
                        Group {
                            switch size {
                            case .regular:
                                Text((watch.basePrice + (watch.connectivity == .gps ? 0 : 100)).formatted())
                            case .large:
                                switch watch.caseType {
                                case .aluminum:
                                    Text((watch.basePrice + 30 + (watch.connectivity == .gps ? 0 : 100)).formatted())
                                case .stainlessSteel:
                                    Text((watch.basePrice + 50 + (watch.connectivity == .gps ? 0 : 100)).formatted())
                                }
                            }
                        }
                        .font(.title)
                        .bold()
                    }
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
