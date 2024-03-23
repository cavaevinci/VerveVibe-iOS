//
//  MatchManager.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import Foundation

@MainActor
class MatchManager: ObservableObject {
    
    @Published var matchedUser: User?
    
    func checkForMatch(withUser user: User) {
        let didMatch = Bool.random()
        if didMatch {
            matchedUser = user
        }
    }
    
}
