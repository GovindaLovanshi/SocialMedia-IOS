//
//  AuthService.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 27/11/24.
//

import Foundation
import Firebase

class AuthService{
    
    @Published var userSession:FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init(userSection: FirebaseAuth.User? = nil) {
        self.userSession = Auth.auth().currentUser
    }   

    @MainActor
    func login(withEmail email:String,password:String) async throws{
        do{
            let result  = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        } case{
            print("DEBUG: Failed to Login user with   error \(error.localizedDescription)")
        }
    }
    @MainActor
    func createUser(email :String,password:String,username:String)async throws{
        do{
            let result  = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } case{
            print("DEBUG: Failed to register user with   error \(error.localizedDescription)")
        }
        
//        Auth.auth().createUser(withEmail: email, password: password){ result, error in
//            
//        }
    }
    
    func loadUserData()async throws{
        
    }
    
    func signout(){
        try Auth.auth().signout()
        self.userSession = nil
    }
}
