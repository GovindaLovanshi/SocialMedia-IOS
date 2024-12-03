//
//  User.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 19/11/24.
//

import Foundation

struct User:Identifiable,Codable,Hashable{
    let id: String
    var userName : String
    var profileImageUrl:String?
    var fullName:String?
    var bio:String?
    var email:String
}

extension User{
    static var MOCK_USERS :[User] = [
        .init(id: NSUUID().uuidString,userName:"Gaju",profileImageUrl:"heart",fullName:"GajuSIngh",bio:"ABCD",email:"abc@gamil.com"),
        .init(id: NSUUID().uuidString,userName:"raju",profileImageUrl:"house",fullName:"Raju",bio:"a",email:"abc@gamil.com"),
        .init(id: NSUUID().uuidString,userName:"Jay",profileImageUrl:"person",fullName:"Jay",bio:"abcde",email:"abc@email.com"),
        .init(id: NSUUID().uuidString,userName:"Gaju",profileImageUrl:"heart",fullName:"GajuSIngh",bio:"ABCD",email:"abc@gamil.com"),
        .init(id: NSUUID().uuidString,userName:"raju",profileImageUrl:"house",fullName:"Raju",bio:"a",email:"abc@gamil.com"),
        .init(id: NSUUID().uuidString,userName:"Jay",profileImageUrl:"person",fullName:"Jay",bio:"abcde",email:"abc@email.com"),
        
    ]
}
