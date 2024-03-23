//
//  CardStackView.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import SwiftUI

struct CardStackView: View {
    
    @StateObject var viewModel = CardsViewModel(service: CardService())
    
    var body: some View {
        ZStack {
            ForEach(viewModel.cardModels) { card in
                CardView(model: card)
            }
        }
    }
}

#Preview {
    CardStackView()
}
