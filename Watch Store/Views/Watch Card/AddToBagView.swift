//
//  AddToBagView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct AddToBagView: View {
    
    let watch: Watch
    
    var body: some View {
        
        Button {
#warning("Add to bag")
        } label:{
            Color(Constants.Color.addToBag)
                .frame(width: 152, height: 45)
                .cornerRadius(10)
                .overlay {
                    Text("Add to cart")
                        .foregroundColor(.white)
                }
        }
    }
}

struct AddToBagView_Previews: PreviewProvider {
    static var previews: some View {
        AddToBagView(watch: dev.watch)
    }
}
