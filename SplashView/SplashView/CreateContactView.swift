//
//  CreateContactView.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/25.
//

import SwiftUI

struct CreateContactView: View {
    @EnvironmentObject var dataSource: ContactDataSource
    @Environment(\.presentationMode) var presentationMode
    
    @State private var firstName: String = ""
    @State private var lastName: String = ""
    @State private var email: String = ""
    @State private var contactDetails: String = ""
    @State private var country: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    TextField("Email", text: $email)
                }
                
                Section(header: Text("Contact Details")) {
                    TextField("Contact Details", text: $contactDetails)
                }
                
                Section(header: Text("Address")) {
                    TextField("Country", text: $country)
                }
                
                Button(action: createContact) {
                    Text("Save Contact")
                }
            }
            .navigationBarTitle("Create Contact")
        }
    }
    
    func createContact() {
        let newContact = Contact(
            firstName: firstName,
            lastName: lastName,
            email: email,
            contactDetails: contactDetails,
            country: country,
            createdAt: Date()
        )
        dataSource.createContact(contact: newContact)
        presentationMode.wrappedValue.dismiss()
    }
}
