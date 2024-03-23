//
//  CurrentUserProfileView.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    @State private var showEditProfile = false
    
    let user: User
    
    var body: some View {
        NavigationStack {
            List {
                //Header View
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
                //Account Info
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        Spacer()
                        Text(user.fullname)
                    }
                    HStack {
                        Text("Email")
                        Spacer()
                        Text("test@gmail.com")
                    }
                }
                
                //Legal
                Section("Legal") {
                    Text("Terms of Service")
                }
                
                //Logout/Delete
                Section {
                    Button("Logout") {
                        print("DEBUG: Logout here..")
                    }
                    Button("Delete Account") {
                        print("DEBUG: Delete account here..")
                    }
                }
                .foregroundStyle(.red)
            }
        }
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .fullScreenCover(isPresented: $showEditProfile) {
            EditProfileView(user: user)
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
