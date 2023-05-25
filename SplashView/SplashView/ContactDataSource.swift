//
//  ContactDataSource.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/25.
//

import Foundation

class ContactDataSource: ObservableObject {
    @Published var contacts: [Contact] = []
    
    func createContact(contact: Contact) {
        contacts.append(contact)
    }
    
    func updateContact(contact: Contact) {
        if let index = contacts.firstIndex(where: { $0.id == contact.id }) {
            contacts[index] = contact
        }
    }
    
    func deleteContact(contact: Contact) {
        if let index = contacts.firstIndex(where: { $0.id == contact.id }) {
            contacts.remove(at: index)
        }
    }
}
