//
//  LoginViewModel.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 30/11/24.
//

import Foundation

class LoginViewModel:ObservableObject{
    @Published var email = ""
    @Published var password = ""    
    
    func signIn()async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
