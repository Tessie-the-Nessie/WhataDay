//
//  ContactItem.swift
//  WhataDay
//
//  Created by Tessa Delsener on 5/26/24.
//

import Foundation
import SwiftData

@Model
class ContactItem {
    var title: String
    var isImportant: Bool
    
    init(title: String, isImportant: Bool) {
        self.title = title
        self.isImportant = isImportant
    }
}

