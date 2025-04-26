//
//  HorizontalCardView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import SwiftUI

struct HorizontalCardView: View {
    let items = [
        ("Just for you !", "Claim your exxlusive offer today!"),
        ("Just for you !", "Claim your exxlusive offer today!"),
        ("Just for you !", "Claim your exxlusive offer today!")
    ]
    
    @State private var currentPage = 0
    private let timer = Timer.publish(every: 5, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $currentPage) {
                ForEach(0..<items.count, id: \.self) { index in
                    CardView()
                        .tag(index)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .frame(height: 100)
            .onReceive(timer) { _ in
                withAnimation {
                    currentPage = (currentPage + 1) % items.count
                }
            }
        }
    }
}

#Preview {
    HorizontalCardView()
}
