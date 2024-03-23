//
//  MainTabView.swift
//  VerveVibe
//
//  Created by Nino on 19.03.2024..
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            CardStackView()
                .tabItem { Image(systemName: "flame")}
                .tag(0)
            Text("Search View")
                .tabItem { Image(systemName: "magnifyingglass")}
                .tag(1)
            Text("Inbox View")
                .tabItem { Image(systemName: "bubble")}
                .tag(2)
            CurrentUserProfileView(user: MockData.users[0])
                .tabItem { Image(systemName: "person")}
                .tag(3)
        }
        //automatically adjusts to system color
        .tint(.primary)
    }
}

#Preview {
    MainTabView()
        .environmentObject(MatchManager())
}
