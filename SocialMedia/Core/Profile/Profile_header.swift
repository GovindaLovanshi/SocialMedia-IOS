//
//  Profile_header.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 26/11/24.
//

import SwiftUI

struct Profile_header: View {
    let user :User
    var body: some View {
        VStack(spacing:10){
            HStack{
                Image(systemName: "house")
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
                Text("Gaju Singh")
                    .font(.footnote)
                    .fontWeight(.semibold   )
                Text("Anacona")
                    .font(.footnote)
                
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
    }
}

#Preview {
    Profile_header(user: User.MOCK_USERS[0  ])
}
