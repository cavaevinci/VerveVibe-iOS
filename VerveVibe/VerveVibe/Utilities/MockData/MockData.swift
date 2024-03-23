//
//  MockData.swift
//  VerveVibe
//
//  Created by Nino on 23.03.2024..
//

import Foundation

struct MockData {
    static let users: [User] = [
        .init(id: NSUUID().uuidString, fullname: "Random Person", age: 22, profileImageURLs: ["TestImage1", "TestImage3"]),
        .init(id: NSUUID().uuidString, fullname: "Random Person 1", age: 32, profileImageURLs: ["TestImage2", "TestImage1"]),
        .init(id: NSUUID().uuidString, fullname: "Random Person 2", age: 29, profileImageURLs: ["TestImage3", "TestImage2"]),
    ]
}
