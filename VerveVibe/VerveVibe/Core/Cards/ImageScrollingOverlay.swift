//
//  ImageScrollingOverlay.swift
//  VerveVibe
//
//  Created by Nino on 20.03.2024..
//

import SwiftUI

struct ImageScrollingOverlay: View {
    @Binding var currentImageIndex: Int
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    print(" GO TO PREVIOUS IMAGE")
                }
            Rectangle()
                .onTapGesture {
                    print(" GO TO NEXT IMAGE")
                }
        }
        .foregroundStyle(.red.opacity(0.25))
    }
}

#Preview {
    ImageScrollingOverlay(currentImageIndex: .constant(1))
}
