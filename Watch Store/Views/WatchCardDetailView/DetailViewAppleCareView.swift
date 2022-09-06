//
//  DetailViewAppleCareView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct DetailViewAppleCareView: View {
    
    var body: some View {
        
        ZStack {
            
            VStack(alignment: .leading, spacing: 20) {
                Text("Would you like to add AppleCare+")
                    .bold()
                
                HStack(alignment: .top) {
                    
                    Image(systemName: "applelogo")
                        .foregroundColor(.red)
                    
                    VStack(alignment: .leading) {
                        Text("AppleCare + for Apple Watch Series 7 \n$79.00 or $3.99/mo")
                        
                        Text("Get additional tech support and accidental damage protection.")
                            .fontWeight(.light)
                    }
                    
                    Spacer()
                    
                    Button {
#warning("Add to order")
                    } label: {
                        Text("Add")
                    }
                }
                
                Text("Add a trade-in")
                    .bold()
                
                HStack(alignment: .top) {
                    
                    Image(systemName: "arrow.left.arrow.right.circle")
                        .rotationEffect(Angle(degrees: -45))
                    
                    Text("Apple Trade in")
                    
                    Spacer()
                    
                    Button {
#warning("Get started")
                    } label: {
                        Text("Get Started")
                    }
                }
                
                Divider()
                
                Text("Compatability")
                    .bold()
                
                HStack(alignment: .bottom) {
                    
                    Image(Constants.Image.Icon.compatibility.rawValue)
                    
                    VStack(alignment: .leading, spacing: 10) {
                        Text("As part of our efforts to reach our environmental goals, Apple Watch does not include a power adapter. Please use your existing Apple power adapter or add a new one before you check out.")
                        
                        Text("Apple Watch requires an iPhone 6s or later with iOS 15 or later.")
                    }
                }
            }
            .padding()
            .background {
                Color(uiColor: .systemGray5)
                    .cornerRadius(6)
            }
        }
    }
}

struct DetailViewAppleCareView_Previews: PreviewProvider {
    static var previews: some View {
        DetailViewAppleCareView()
    }
}
