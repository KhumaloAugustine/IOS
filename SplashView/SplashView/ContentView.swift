//
//  ContentView.swift
//  SplashView
//
//  Created by DA MAC M1 121 on 2023/05/25.
//

import SwiftUI
import Combine


struct ContentView: View {
    @EnvironmentObject var dataSource: ContactDataSource
    @State private var showCreateContact = false
    
    var body: some View {
        NavigationView {
            List {
                ForEach(dataSource.contacts) { contact in
                    VStack(alignment: .leading) {
                        Text("\(contact.firstName) \(contact.lastName)")
                            .font(.headline)
                        Text(contact.email)
                            .font(.subheadline)
                    }
                    .contextMenu {
                        Button(action: { editContact(contact) }) {
                            Label("Edit", systemImage: "pencil")
                        }
                        Button(action: { deleteContact(contact) }) {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
            .navigationBarTitle("Employee")
            .navigationBarItems(trailing:
                Button(action: { showCreateContact = true }) {
                    Image(systemName: "plus")
                }
            )
        }
        .sheet(isPresented: $showCreateContact) {
            CreateContactView()
        }
    }
    
    func editContact(_ contact: Contact) {
        let editView = EditContactView(contact: contact)
        let host = UIHostingController(rootView: editView)
        host.modalPresentationStyle = .fullScreen
        UIApplication.shared.windows.first?.rootViewController?.present(host, animated: true, completion: nil)
    }

    
    func deleteContact(_ contact: Contact) {
        dataSource.deleteContact(contact: contact)
    }
}
