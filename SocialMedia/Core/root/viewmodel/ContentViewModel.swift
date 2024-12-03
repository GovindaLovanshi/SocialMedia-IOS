//
//  ContentViewModel.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 27/11/24.
//

import Foundation
import Firebase
import Combine


class ContentViewModel:ObservableObject{
    
    private let service = AuthService.shared
    private var cancellable = Set<AnyCancellable>()
    
    @Published var userSession : FirebaseAuth.User?
    
    init(){
        setSubscribers()
    }
    
    func setSubscribers(){
        service.$userSession.sink {[weak self] user in
            self?.userSession = userSession
        }
        .store(in: $cancellable)
    }
}
