//
//  ProfileView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 16/11/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user :User
    private let gridItems:[GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    
    
    var post:[Post]{
        return Post.MOCK_POSTS.filter({$0.user?.userName == user.userName})
    }
    var body: some View {
        ScrollView{
            //header
            
            VStack(spacing:10){
                HStack{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80,height: 80)
                        .clipShape(Circle())
                    
                    Spacer()
                    
                    HStack(spacing: 8){
                        UserStatView(value: 120, title: "Posts")
                        
                        UserStatView(value: 12000, title: "Follower")
                        
                        UserStatView(value: 12, title: "Following")
                    }
                }
                .padding(.horizontal)
                
                // name bio
                VStack(alignment: .leading,spacing: 4){
                    if user.fullName != nil{
                        Text(user.fullName ?? "")
                            .font(.footnote)
                            .fontWeight(.semibold   )
                    }
                    
                    if user.bio != nil{
                        Text(user.bio ?? "")
                            .font(.footnote)
                    }
                    
                }
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.horizontal)
                
                // action vutton
                
                Button{
                    
                }label: {
                    Text("Edit Profile")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 32)
                        .foregroundStyle(.black)
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color.gray,lineWidth: 1))
                }
                
                Divider()
            }
            
            //post grid view
            
            PostGridView(post: post)
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
            
        }
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
