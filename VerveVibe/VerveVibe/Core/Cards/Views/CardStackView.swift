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
                CardView(viewModel: viewModel, model: card)
            }
        }
        .onChange(of: viewModel.cardModels) { oldValue, newValue in
            print("DEBUG: Old value count is \(oldValue.count)")
            print("DEBUG: New value count is \(newValue.count)")
        }
    }
}

#Preview {
    CardStackView()
}
