//
//  ExpireSoonProductCategory.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ExpireSoonProductCategory: View {
    var product: ExpireProductModel
    
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
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(product.name)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.black)
                
                Text("\(product.price)")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.black)
                
                Button {
                    product.action()
                } label: {
                    Text("View Details")
                        .font(.system(size: 14, weight: .medium))
                        .foregroundStyle(.black)
                        .frame(width: 110, height: 25)
                        .overlay {
                            RoundedRectangle(cornerRadius: 12.5)
                                .stroke(.black, lineWidth: 1)
                        }
                }
            }
        }
        .frame(width: 100, height: 100)
    }
}

#Preview {
    ExpireSoonProductCategory(product: ExpireProductModelData[0])
}
