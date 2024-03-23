//
//  CardModel.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import Foundation

struct CardModel {
    let user: User
}

extension CardModel: Identifiable, Hashable {
    var id: String { return user.id }
}
