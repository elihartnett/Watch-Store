//
//  DetailViewCaseSizeView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewCaseSizeView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Button {
#warning("link to watch size and thicken border")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
                
                HStack {
                    VStack(alignment: .leading) {
                        Text("41 mm")
                            .bold()
                        Text("Fits 130-200mm wrists.")
                    }
                    
                    Spacer()
                    
                    Text("$") + Text(watch.price.description)
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
        DetailViewCaseSizeView(watch: dev.watch)
    }
}
