//
//  Notifications.swift
//  WhataDay
//
//  Created by Tessa Delsener on 5/26/24.
//

import SwiftUI

struct Notifications: View {
    var body: some View {
        VStack {
            Text("Welcome, <user>!")
            //        Image
            Text("What would you like to do?")
            HStack {
                Button("Notifications") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("Message") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
                Button("Contacts") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                }
            }
        }
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Notifications()
}
