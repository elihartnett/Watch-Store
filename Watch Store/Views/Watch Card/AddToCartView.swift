//
//  AddToCartView.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/28/22.
//

import SwiftUI

struct AddToCartView: View {
    
    @EnvironmentObject var storeModel: StoreModel
    let watch: Watch
    
    var body: some View {
        
        Button {
            storeModel.cart.append(watch)
        } label:{
            Color(Constants.Color.addToCart)
                .frame(width: 152, height: 45)
                .cornerRadius(10)
                .overlay {
                    Text("Add to cart")
                        .foregroundColor(.white)
                }
        }
    }
}

struct AddToCartView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartView(watch: dev.watch)
            .environmentObject(StoreModel())
    }
}
