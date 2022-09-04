//
//  DetailViewConnectivityView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewConnectivityView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Button {
#warning("link to watch size and thicken border")
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .stroke(.black)
                
                VStack {
                    Text("GPS")
                        .bold()
                    
                    Image(Constants.Image.Icon.wifi)
                }
                .foregroundColor(.black)
                .padding()
            }
        }
    }
}

struct DetailViewConnectivityView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewConnectivityView(watch: dev.watch)
    }
}
