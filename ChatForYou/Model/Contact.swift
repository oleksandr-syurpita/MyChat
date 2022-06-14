//
//  Contact.swift
//  ChatForYou
//
//  Created by admin on 14.06.2022.
//

import Foundation
struct Contact: Identifiable {
    let id = UUID()
    let imageName: String
    let name: String
    let phone: String
    let email: String
    let age: Int
}
