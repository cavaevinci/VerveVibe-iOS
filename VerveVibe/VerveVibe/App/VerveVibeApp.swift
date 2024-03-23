//
//  VerveVibeApp.swift
//  VerveVibe
//
//  Created by Nino on 19.03.2024..
//

import SwiftUI

@main
struct VerveVibeApp: App {
    var body: some Scene {
        WindowGroup {
            CardView(model: CardModel(user: MockData.users[1]))
        }
    }
}
