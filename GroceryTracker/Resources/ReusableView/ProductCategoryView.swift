//
//  ProductCategoryView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import SwiftUI

struct ProductCategoryView: View {
    var product: ProductCategory
    
    var body: some View {
        VStack(spacing: 0) {
            Image(product.image)
                .resizable()
                .scaledToFit()
                .frame(width: 70, height: 70)
                .cornerRadius(35)
            
            Text(product.name)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(Color.black)
        }
    }
}

#Preview {
    ProductCategoryView(product: productData[0])
}
