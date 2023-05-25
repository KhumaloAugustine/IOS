import SwiftUI

struct EditContactView: View {
    @EnvironmentObject var dataSource: ContactDataSource
    @Environment(\.presentationMode) var presentationMode
    
    var contact: Contact
    
    @State private var firstName: String
    @State private var lastName: String
    @State private var email: String
    @State private var contactDetails: String
    @State private var country: String
    
    init(contact: Contact) {
        self.contact = contact
        _firstName = State(initialValue: contact.firstName)
        _lastName = State(initialValue: contact.lastName)
        _email = State(initialValue: contact.email)
        _contactDetails = State(initialValue: contact.contactDetails)
        _country = State(initialValue: contact.country)
    }
    
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
                
                Button(action: updateContact) {
                    Text("Update Contact")
                }
            }
            .navigationBarTitle("Edit Contact")
        }
    }
    
    func editContact(_ contact: Contact) {
            let editView = EditContactView(contact: contact)
                .environmentObject(dataSource)
            let host = UIHostingController(rootView: editView)
            host.modalPresentationStyle = .fullScreen
            UIApplication.shared.windows.first?.rootViewController?.present(host, animated: true, completion: nil)
        }
    
    func updateContact() {
        let updatedContact = Contact(
            firstName: firstName,
            lastName: lastName,
            email: email,
            contactDetails: contactDetails,
            country: country,
            createdAt: contact.createdAt
        )
        
        dataSource.updateContact(contact: updatedContact)
        presentationMode.wrappedValue.dismiss()
    }
}
