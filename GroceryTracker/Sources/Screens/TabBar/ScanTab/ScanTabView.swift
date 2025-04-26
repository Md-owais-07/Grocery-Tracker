//
//  ScanTabView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import SwiftUI

struct ScanTabView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack(spacing: 10) {
            Text("ScanTabView")
            
            Button {
                dismiss()
            } label: {
                Text("Dismis")
                    .font(.system(size: 16, weight: .medium))
            }

        }
    }
}

#Preview {
    ScanTabView()
}
