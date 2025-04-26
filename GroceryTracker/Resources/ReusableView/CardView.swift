//
//  CardView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import SwiftUI

struct CardView: View {
    
    var body: some View {
        VStack {
            VStack {
                HStack(spacing: 0) {
                    ZStack {
                        Image(systemName: "flame.fill")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .foregroundStyle(Color.cardClr)
                    }
                    .padding(.horizontal, 20)
                    .frame(height: 100)
                    .background(Color.yellow)
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Just for you !")
                            .font(.system(size: 20, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                        
                        Text("Claim your exclusive offer today!")
                            .font(.system(size: 13, weight: .regular))
                            .multilineTextAlignment(.leading)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundStyle(.white)
                    }
                }.background(Color.appGreenClr).cornerRadius(16)
            }
        }.padding(.horizontal, 20)
    }
}

#Preview {
    CardView()
}
