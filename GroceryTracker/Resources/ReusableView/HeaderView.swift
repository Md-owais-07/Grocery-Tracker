//
//  HeaderView.swift
//  GroceryTracker
//
//  Created by Owais on 4/26/25.
//

import SwiftUI

struct HeaderView: View {
    var action: () -> Void = {}
    let title: String
    
    var body: some View {
        HStack {
            Button {
                action()
            } label: {
                Image(systemName: "chevron.left")
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.medium)
                    .frame(width: 20, height: 20)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            Text(title)
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(.black)
            
            Spacer()
            
            Color.clear.frame(width: 0)
        }
        .frame(height: 50).padding(.horizontal, 20).background(.white)
    }
}

#Preview {
    HeaderView(title: "demo")
}
