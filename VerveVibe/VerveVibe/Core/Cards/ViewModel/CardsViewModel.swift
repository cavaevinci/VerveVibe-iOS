//
//  CardsViewModel.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import Foundation

class CardsViewModel: ObservableObject {
    
    @Published var cardModels = [CardModel]()
    
    private let service: CardService
    
    init(service: CardService) {
        self.service = service
        Task { await fetchCardModels() }
    }
    
    func fetchCardModels() async {
        do {
            self.cardModels = try await service.fetchCardModels()
        } catch {
            print("DEBUG: Failed to fetch cards with error: \(error)")
        }
    }
}
