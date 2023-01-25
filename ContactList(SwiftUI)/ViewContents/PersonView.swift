//
//  PersonView.swift
//  ContactList(SwiftUI)
//
//  Created by Борис Сонин on 24.01.2023.
//

import SwiftUI

struct PersonView: View {
    
    let person: Person
    
    var body: some View {
        NavigationStack {
            List {
                HStack {
                    Spacer()
                    Image(systemName: "person")
                        .resizable()
                        .frame(width: 150, height: 150, alignment: .center)
                        .foregroundColor(.blue)
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "phone.fill")
                    Text("\(person.phone)")
                        .frame(height: 30, alignment: .leading)
                }
                
                HStack {  Image(systemName: "tray.fill")
                    Text("\(person.email)")
                        .frame(height: 30, alignment: .leading)
                }
            }
            .navigationTitle("\(person.fullName)")
        }
    }
}
    
    struct PersonView_Previews: PreviewProvider {
        static var previews: some View {
            PersonView(person: DataStore().getContactList().first!)
        }
    }


