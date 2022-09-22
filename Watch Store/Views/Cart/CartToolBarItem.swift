//
//  CartToolBarItem.swift
//  Watch Store
//
//  Created by Eli Hartnett on 9/4/22.
//

import SwiftUI

struct CartToolBarItem: View {
    
    @EnvironmentObject var storeModel: StoreModel
    @State var showCart = false
    
    var body: some View {
        
        Image(systemName: "bag")
            .onTapGesture {
                showCart = true
            }
            .overlay(alignment: .bottomTrailing) {
                Text(storeModel.cart.count.description)
                    .minimumScaleFactor(0.5)
                    .frame(width: 14, height: 14)
                    .foregroundColor(.white)
                    .font(.caption)
                    .bold()
                    .padding(.all, 1)
                    .background(.black)
                    .cornerRadius(10)
                    .sheet(isPresented: $showCart) {
                        CartView()
                    }
            }
            .accessibilityElement(children: .ignore)
            .accessibility(label: Text("Cart"))
            .accessibilityAddTraits(AccessibilityTraits.isModal)
    }
}

struct CartToolBarItem_Previews: PreviewProvider {
    static var previews: some View {
        CartToolBarItem()
            .environmentObject(StoreModel())
    }
}
