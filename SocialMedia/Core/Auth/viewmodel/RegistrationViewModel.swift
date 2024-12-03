//
//  RegistrationViewModel.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 30/11/24.
//

import Foundation

class RegistrationViewModel:ObservableObject{
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
    
    func createUser()async throws{
        try await AuthService.shared.createUser(email: email, passwird: password, username: username)
    }
}
