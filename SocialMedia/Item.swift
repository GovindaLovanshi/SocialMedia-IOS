//
//  Item.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 16/11/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
