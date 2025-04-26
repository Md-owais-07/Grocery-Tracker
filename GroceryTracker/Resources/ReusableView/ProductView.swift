//
//  ProductView.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ProductView: View {
    var expireProduct: ExpireProductModel
    
    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Image(expireProduct.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 90, height: 90, alignment: .center)
            }
            .frame(width: 120, height: 85).background(Color.productBG).cornerRadius(16)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(expireProduct.name)
                    .font(.system(size: 18, weight: .semibold))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Text(expireProduct.expiryDate)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                Button {
                    expireProduct.action()
                } label: {
                        Text("View Details")
                            .font(.system(size: 15, weight: .medium))
                            .foregroundStyle(.white)
                            .frame(width: 110, height: 25)
                            .overlay {
                                RoundedRectangle(cornerRadius: 12.5)
                                    .stroke(.white, lineWidth: 1)
                            }
                }.frame(maxWidth: .infinity, alignment: .leading)
            }.frame(maxWidth: .infinity)
        }.padding(.horizontal, 20).background(Color.appGreenClr)
    }
}

#Preview {
    ProductView(expireProduct: ExpireProductModelData[0])
}
