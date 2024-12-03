//
//  FeedsSelf.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 17/11/24.
//

import SwiftUI

struct FeedsSelf: View {
    let post :Post
    var body: some View {
        VStack{
            // image user name
            
            HStack{
                if let user = post.user{
                    Image(user.profileImageUrl ?? "")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40,height: 40)
                        .clipShape(Circle())
                    
                    Text(user.userName)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading,8 )
            // post image
            
           
            Image(post.imageUrl)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 400)
                    .clipShape(Rectangle())
           
            
            
            
            HStack(spacing:16){
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "message")
                        .imageScale(.large)
                        
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading,8)
            .padding(.top,4)
            .foregroundStyle(.black)
            
            // like label
            
            Text("\(post.like)")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
            
            //caption label
            HStack{
                Text("\(post.user?.userName ?? "")").fontWeight(.semibold)
                Text(post.caption)
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding(.leading,10)
            .font(.footnote)
            .padding(.top,1)
            
            Text("\(post.timeStamp)")
                .font(.footnote)
                .frame(maxWidth: .infinity,alignment: .leading)
                .padding(.leading,10)
                .padding(.top,1)
                .foregroundStyle(.gray)
        }
    }
}

#Preview {
    FeedsSelf(post: Post.MOCK_POSTS[3])
}
