//
//  UserContactViewModel.swift
//  ChatForYou
//
//  Created by admin on 07.06.2022.
//

import Foundation

class UserContactViewModel: ObservableObject {
   @Published var contacts = [
        Contact(imageName: "1", name: "Holly F. Huey", phone: "+1(242)-8110134", email: "hollyhuey@yeilmail.com", age: 21),
        Contact(imageName: "1", name: "Rose Acker", phone: "+1(656)-1881047", email: "roseacker@neymail.com", age: 3),
        Contact(imageName: "1", name: "Leonardo Longnecker", phone: "+1(545)-3442899", email: "cbleonardo1@zuimail.com", age: 4),
        Contact(imageName: "1", name: "Quentin F. Joplin", phone: "+1(434)-7448466", email: "cfjoplin5@neymail.com", age: 5),
        Contact(imageName: "1", name: "Christine Clapper", phone: "+1(141)-5115553", email: "dachristine0@vuomail.com", age: 6),
        Contact(imageName: "1", name: "Holly F. Huey", phone: "+1(242)-8110134", email: "hollyhuey@yeilmail.com", age: 7),
        Contact(imageName: "1", name: "Rose Acker", phone: "+1(656)-1881047", email: "roseacker@neymail.com", age: 8),
        Contact(imageName: "1", name: "Leonardo Longnecker", phone: "+1(545)-3442899", email: "cbleonardo1@zuimail.com", age: 8),
        Contact(imageName: "1", name: "Quentin F. Joplin", phone: "+1(434)-7448466", email: "cfjoplin5@neymail.com", age: 9),
        Contact(imageName: "1", name: "Christine Clapper", phone: "+1(141)-5115553", email: "dachristine0@vuomail.com", age: 12),
        Contact(imageName: "1", name: "Holly F. Huey", phone: "+1(242)-8110134", email: "hollyhuey@yeilmail.com", age: 312),
        Contact(imageName: "1", name: "Rose Acker", phone: "+1(656)-1881047", email: "roseacker@neymail.com", age: 3122),
        Contact(imageName: "1", name: "Leonardo Longnecker", phone: "+1(545)-3442899", email: "cbleonardo1@zuimail.com", age: 54),
        Contact(imageName: "1", name: "Quentin F. Joplin", phone: "+1(434)-7448466", email: "cfjoplin5@neymail.com", age: 65),
        Contact(imageName: "1", name: "Christine Clapper", phone: "+1(141)-5115553", email: "dachristine0@vuomail.com", age: 67),
        Contact(imageName: "1", name: "Joy Cordon", phone: "+1(353)-0663954", email: "bvjoy21@ypmail.com", age: 23)
    ]

    func addRow() {
        contacts.append(.init(imageName: "1", name: "Sasha Syurpita", phone: "+380963155532", email: "syurpitaoleksandr@gmail.com", age: 19))
    }
}
