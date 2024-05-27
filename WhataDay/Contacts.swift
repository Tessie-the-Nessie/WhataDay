//
//  Contacts.swift
//  WhataDay
//
//  Created by Tessa Delsener on 5/26/24.
//


import SwiftUI
import SwiftData

struct Contacts: View {
    
    @State private var showNewContact = false
    
    @Query var Contacts: [ContactItem]
    
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack {
            HStack {
                Text("Contact List")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                
                Spacer()
                
                Button {
                    withAnimation {
                        self.showNewContact = true
                    }
                    
                } label: {
                    Text("+")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                }
            }
            .padding()
            
            Spacer()
            
            List {
                ForEach(Contacts) { ContactItem in
                    if ContactItem.isImportant == true {
                        Text("‼️" + ContactItem.title)
                    } else {
                        Text(ContactItem.title)
                    }
                    
                }
                .onDelete(perform: deleteContact)
            }
            .listStyle(.plain)
            
        }
        if showNewContact {
            NewContactView(contactItem: ContactItem(title: "", isImportant: false), showNewContact: $showNewContact)
        }
    }
    
    func deleteContact(at offsets: IndexSet) {
        for offset in offsets {
            let ContactItem = Contacts[offset]
            modelContext.delete(ContactItem)
        }
    }
}

#Preview {
    ContentView()
}

