//
//  UserInfoVIew.swift
//  VerveVibe
//
//  Created by Nino on 20.03.2024..
//

import SwiftUI

struct UserInfoView: View {
    
    @Binding var showProfileModal: Bool
    
    let user: User
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(user.fullname)
                    .font(.title)
                    .fontWeight(.heavy)
                Text("\(user.age)")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    showProfileModal.toggle()
                } label: {
                    Image(systemName: "arrow.up.circle")
                         .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Lorem Ipsum")
                .font(.subheadline)
                .lineLimit(2)
        }
        .foregroundStyle(.white)
        .padding()
        .background(
            LinearGradient(colors: [.clear, .black], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    UserInfoView(showProfileModal: .constant(false), user: MockData.users[1])
}
