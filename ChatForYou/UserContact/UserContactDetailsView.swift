//
//  UserContactDetailsView.swift
//  ChatForYou
//
//  Created by admin on 14.06.2022.
//

import SwiftUI

struct UserContactDetailsView: View {
    
    let contact: Contact
    
    var body: some View {
        VStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150)
                .clipped()
                .cornerRadius(.infinity)
                .shadow(radius: 3)
            Text(contact.name)
                .font(.title)
                .fontWeight(.medium)
            Form {
                Section {
                    HStack {
                        Text("Phone")
                        Spacer()
                        Text(contact.phone)
                            .font(.system(size: 15, weight: .bold))
                            .font(.callout)
                    }
                    
                    HStack {
                        Text("Age")
                        Spacer()
                        Text(String(contact.age))
                            .font(.system(size: 15, weight: .bold))
                            .font(.callout)
                    }
                }
            }
        }
    }
}

struct UserContactDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        UserContactDetailsView(
            contact: Contact(
                imageName: "1",
                name: "Holly F. Huey",
                phone: "+1(242)-8110134",
                email: "hollyhuey@yeilmail.com",
                age: 21
            )
        )
    }
}
