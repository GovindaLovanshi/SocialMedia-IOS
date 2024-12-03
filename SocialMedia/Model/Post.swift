//
//  Post.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 26/11/24.
//

import Foundation

struct Post: Identifiable,Hashable,Codable{
    let id :String
    let owner : String
    let caption :String
    let like :Int
    let imageUrl :String
    let timeStamp :Date
    let user : User?
}

extension Post{
    static var MOCK_POSTS :[Post] = [
        .init(id: NSUUID().uuidString, owner: NSUUID().uuidString, caption: "this is a my First Post", like: 300, imageUrl: "heart", timeStamp: Date(), user: User.MOCK_USERS[3])
    ]
}
