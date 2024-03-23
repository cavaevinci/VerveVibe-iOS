//
//  VerveVibeApp.swift
//  VerveVibe
//
//  Created by Nino on 19.03.2024..
//

import SwiftUI

@main
struct VerveVibeApp: App {
    
    @StateObject var matchManager = MatchManager()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(matchManager)
        }
    }
}
