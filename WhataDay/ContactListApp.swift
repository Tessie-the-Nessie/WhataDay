//
//  ContactListApp.swift
//  WhataDay
//
//  Created by Tessa Delsener on 5/26/24.
//

import SwiftUI
import SwiftData

//@main
struct ContactApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ContactItem.self)
        }
    }
}

