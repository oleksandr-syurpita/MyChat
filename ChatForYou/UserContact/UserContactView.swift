//
//  UserContactView.swift
//  ChatForYou
//
//  Created by admin on 06.06.2022.
//

import SwiftUI

struct UserContactView: View {
    init() {
        UITableView.appearance().backgroundColor = .clear // For tableView
        UITableViewCell.appearance().backgroundColor = .clear // For tableViewCell
        viewModel = .init()
    }
    @ObservedObject var viewModel: UserContactViewModel
    var body: some View {
        
        NavigationView {
            List(viewModel.contacts) { contact in
                NavigationLink(destination: UserContactDetailsView(contact: contact)) {
                    ContactRow(contact: contact)
                }
                    .listRowBackground(Color.clear)
                
            }
            .background(Image("backgRoundChat"))
            .navigationBarTitle("Yor contact", displayMode: .large)
                      .background(NavigationConfigurator { nc in
                          nc.navigationBar.barTintColor = .blue
                          nc.navigationBar.titleTextAttributes = [.foregroundColor : UIColor.white]
                      })
                      .navigationBarItems(trailing: Button(action: {
                          viewModel.addRow()
                      }) {
                           Image(systemName: "plus")
                       })
            .toolbar {
                ToolbarItemGroup(placement: .bottomBar) {
                    Button(action: {}) {
                        Image("user")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipped()
                            .cornerRadius(50)
                            .padding([.top],20)
                        
                    }
                    
                    Button(action: {}) {
                        Image("chat")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .clipped()
                            .cornerRadius(50)
                            .padding([.top],20)
                        
                    }
                }
                
            }
            
        }
        
    }
}

struct UserContactView_Previews: PreviewProvider {
    static var previews: some View {
        UserContactView()
    }
}

struct ContactRow: View {
    let contact: Contact
    var body: some View {
        HStack {
            Image(contact.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipped()
                .cornerRadius(50)
            
            Spacer()
            VStack(alignment: .trailing) {
                Text(contact.name)
                    .font(.system(size: 21, weight: .medium, design: .default))
                Text(contact.phone)
                
            }
            
        }
    }
}
