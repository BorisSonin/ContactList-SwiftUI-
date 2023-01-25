//
//  ContactsView.swift
//  ContactList(SwiftUI)
//
//  Created by Борис Сонин on 24.01.2023.
//

import SwiftUI

struct ContactsView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                NavigationLink(destination: PersonView(person: contact)) {
                    Text(contact.fullName)
                }
                .navigationTitle("Contact List")
            }
            .listStyle(.grouped)
        }
    }
}
    struct ContactsView_Previews: PreviewProvider {
        static var previews: some View {
            ContactsView(contacts: DataStore().getContactList())
        }
    }
