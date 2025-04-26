//
//  ExpiredProductCategoryView.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ExpiredProductCategoryView: View {
    @Environment(\.dismiss) private var dismiss
    
    let columns = [
        GridItem(.flexible(), spacing: -10),
        GridItem(.flexible(), spacing: -10),
        GridItem(.flexible(), spacing: -10),
    ]
    
    var body: some View {
        VStack(spacing: 0) {
            
            HeaderView(action: {
                dismiss()
            }, title: "Expired Products")
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 25) {
                    ForEach(productData) { product in
                        ExpiredProductCategory(product: product)
                    }
                }
                .padding(.top, 20)
            }
        }
        .background(Color.appClr)
        .navigationBarBackButtonHidden(true)
        .background(EnableSwipeBackGesture())
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ExpiredProductCategoryView()
}
