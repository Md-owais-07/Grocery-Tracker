//
//  ProductCategoryModel.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import Foundation

struct ProductCategory: Identifiable {
    let id  = UUID()
    let name: String
    let image: String
}


var productData: [ProductCategory] = [
    ProductCategory(name: "Potato", image: "potatos"),
    ProductCategory(name: "Tomato", image: "tomato"),
    ProductCategory(name: "Onion", image: "onions"),
    ProductCategory(name: "Carrot", image: "carrots"),
    ProductCategory(name: "Ginger", image: "gingers"),
]
