//
//  NewContact.swift
//  WhataDay
//
//  Created by Tessa Delsener on 5/26/24.
//

import SwiftUI
import SwiftData

struct NewContactView: View {
    
    @Bindable var contactItem: ContactItem
    @Binding var showNewContact: Bool
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            Text("Contact:")
                .font(.title2)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $contactItem.title, axis: .vertical)
                .padding()
                .background(Color(.systemGroupedBackground))
                .cornerRadius(15)
                .padding()
            
            Toggle(isOn: $contactItem.isImportant) {
                Text("Is this an Emergency Contact?")
            }
            
            Button {
                addContact()
                self.showNewContact = false
            } label: {
                Text("Save")
            }
        }
        .padding()
    }

    func addContact() { //may be contactItem at the equal sign
        let Contact = ContactItem(title: contactItem.title, isImportant: contactItem.isImportant)
        modelContext.insert(Contact)
    }
    
}


