//
//  ExpireProductModel.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import Foundation

struct ExpireProductModel: Identifiable {
    let id = UUID()
    let name: String
    let expiryDate: String
    let image: String
    let price: String
    let action: () -> Void
}


var ExpireProductModelData: [ExpireProductModel] = [
    ExpireProductModel(name: "Onion Bag", expiryDate: "Expiry date: 02/05/2025", image: "onions", price: "₹100", action: {}),
    ExpireProductModel(name: "Potato Bag", expiryDate: "Expiry date: 02/05/2025", image: "potatos", price: "₹90", action: {}),
    ExpireProductModel(name: "Carrot Bag", expiryDate: "Expiry date: 02/05/2025", image: "carrots", price: "₹120", action: {}),
    ExpireProductModel(name: "Onion Bag", expiryDate: "Expiry date: 02/05/2025", image: "onions", price: "₹200", action: {}),
    ExpireProductModel(name: "Potato Bag", expiryDate: "Expiry date: 02/05/2025", image: "potatos", price: "₹60", action: {}),
    ExpireProductModel(name: "Carrot Bag", expiryDate: "Expiry date: 02/05/2025", image: "carrots", price: "₹20", action: {})
]
    
