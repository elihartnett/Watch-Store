//
//  StoreModel.swift
//  Watch Store
//
//  Created by Eli Hartnett on 8/30/22.
//

import Foundation

class StoreModel: ObservableObject {
    
    @Published var watches = [Watch(caseType: .starlightAluminum, bandType: .braided(color: .blue), image: Constants.Image.Watch.placeHolder1, price: 399), Watch(caseType: .midnightAluminum, bandType: .solo(color: .pink), image: Constants.Image.Watch.placeHolder2, price: 399), Watch(caseType: .midnightAluminum, bandType: .nike(color: .black), image: Constants.Image.Watch.placeHolder3, price: 399), Watch(caseType: .starlightAluminum, bandType: .sport(color: .red), image: Constants.Image.Watch.placeHolder4, price: 399), Watch(caseType: .midnightAluminum, bandType: .leather(color: .black), image: Constants.Image.Watch.placeHolder5, price: 399), Watch(caseType: .midnightAluminum, bandType: .stainlessSteel(color: .black), image: Constants.Image.Watch.placeHolder6, price: 399)]
    
    @Published var cart: [Watch] = []
}
