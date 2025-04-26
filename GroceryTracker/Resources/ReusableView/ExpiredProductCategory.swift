//
//  ExpiredProductCategory.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ExpiredProductCategory: View {
    var product: ProductCategory
    
    var body: some View {
        VStack(alignment: .center, spacing: 12) {
                ZStack {
                    Image(product.image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                }
                .frame(width: 80, height: 100)
                .padding()
                .background(.gray.opacity(0.1))
                .cornerRadius(16)
                
                Text(product.name)
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(.black)
        }
    }
}

#Preview {
    ExpiredProductCategory(product: productData[0])
}
