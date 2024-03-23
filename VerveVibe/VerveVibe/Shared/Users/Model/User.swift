//
//  User.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import Foundation

struct User: Identifiable {
    let id: String
    let fullname: String
    var age: Int
    var profileImageURLs: [String]
}
