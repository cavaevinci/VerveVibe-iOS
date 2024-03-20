//
//  UserInfoVIew.swift
//  VerveVibe
//
//  Created by Nino on 20.03.2024..
//

import SwiftUI

struct UserInfoView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Marta")
                    .font(.title)
                    .fontWeight(.heavy)
                Text("20")
                    .font(.title)
                    .fontWeight(.semibold)
                Spacer()
                Button {
                    print("DEBUG: Show profile here")
                } label: {
                    Image(systemName: "arrow.up.circle")
                        .fontWeight(.bold)
                        .imageScale(.large)
                }
            }
            Text("Actress or Witch")
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
    UserInfoView()
}
