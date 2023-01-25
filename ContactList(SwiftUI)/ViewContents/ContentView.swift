//
//  ContentView.swift
//  ContactList(SwiftUI)
//
//  Created by Борис Сонин on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                ContactsView(contacts: DataStore().getContactList())
                    .tabItem {
                        Image(systemName: "person.2.fill")
                        Text("Contacs")
                    }
                NumbersView(contacts: DataStore().getContactList())
                    .tabItem {
                        Image(systemName: "phone.fill")
                        Text("Numbers")
                    }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

