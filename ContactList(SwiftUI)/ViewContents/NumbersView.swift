//
//  NumbersView.swift
//  ContactList(SwiftUI)
//
//  Created by Борис Сонин on 24.01.2023.
//

import SwiftUI

struct NumbersView: View {
    
    let contacts: [Person]
    
    var body: some View {
        NavigationStack {
            List(contacts, id: \.self) { contact in
                Text(contact.fullName)
                    .opacity(0.5)
                
                HStack {
                    Image(systemName: "phone.fill")
                        .foregroundColor(.blue)
                    Text("\(contact.phone)")
                        .frame(alignment: .leading)
                }
                
                HStack {  Image(systemName: "tray.fill")
                        .foregroundColor(.blue)
                    Text("\(contact.email)")
                        .frame(alignment: .leading)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

struct NumbersView_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contacts: DataStore().getContactList())
    }
}

