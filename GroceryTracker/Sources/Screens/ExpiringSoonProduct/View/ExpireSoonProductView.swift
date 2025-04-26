//
//  ExpireSoonProductView.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ExpireSoonProductView: View {
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
            }, title: "Expiring Soon")
            
            ScrollView(showsIndicators: false) {
                LazyVGrid(columns: columns, spacing: 150) {
                    ForEach(ExpireProductModelData) { product in
                        ExpireSoonProductCategory(product: product)
                    }
                }
                .padding(.top, 80)
            }
        }
        .background(Color.appClr)
        .navigationBarBackButtonHidden(true)
        .background(EnableSwipeBackGesture())
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ExpireSoonProductView()
}
