//
//  StoreModel.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/30/22.
//

import Foundation

class StoreModel: ObservableObject {
    
    @Published var watches = [
        Watch(caseType: .aluminum(color: .starlight), bandType: .braided(color: .blue), basePrice: 399),
                              
        Watch(caseType: .aluminum(color: .midnight), bandType: .solo(color: .pink), basePrice: 399),
      
        Watch(caseType: .aluminum(color: .midnight), bandType: .nike(color: .black), basePrice: 399),
      
        Watch(caseType: .aluminum(color: .midnight), bandType: .sport(color: .red), basePrice: 399),
      
        Watch(caseType: .aluminum(color: .midnight), bandType: .leather(color: .black), basePrice: 399),
      
        Watch(caseType: .stainlessSteel(color: .graphite), bandType: .milanese(color: .black), basePrice: 399)
    ]
    
    @Published var cart: [Watch] = []
}
