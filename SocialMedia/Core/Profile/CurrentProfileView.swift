//
//  CurrentProfileView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 23/11/24.
//

import SwiftUI

struct CurrentProfileView: View {
    let user : User
    var body: some View {
        NavigationStack{
            ScrollView{
                
                Profile_header(user: user)
                
                //post grid view
                
                PostGridView(post: Post.MOCK_POSTS )
                    .navigationTitle("Profile")
                    .navigationBarTitleDisplayMode(.inline)
                    .toolbar{
                        ToolbarItem(placement: .navigationBarTrailing){
                            Button{
                                AuthService.shared.signout()
                            }label:{
                                Image(systemName: "house")
                                    .foregroundStyle(.black)
                            }
                        }
                    }
                
                
            }
        }
        
    }
}

#Preview {
    CurrentProfileView(user: User.MOCK_USERS[1])
}
