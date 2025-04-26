//
//  DemoView.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        VStack {
            HeaderView(action: {
                //
            }, title: "Product Details")
            
            Spacer()
            
            Text("Product Details View")
            
            Spacer()
        }
        .background(Color.appClr)
        .navigationBarBackButtonHidden(true)
        .background(EnableSwipeBackGesture())
        .ignoresSafeArea(.all, edges: .top)
    }
}

#Preview {
    ProductDetailsView()
}
