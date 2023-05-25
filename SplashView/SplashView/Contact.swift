//
//  Contact.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/25.
//

import Foundation

struct Contact: Identifiable {
    let id = UUID()
    var firstName: String
    var lastName: String
    var email: String
    var contactDetails: String
    var country: String
    var createdAt: Date
}
