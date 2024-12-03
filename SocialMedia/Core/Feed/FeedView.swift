//
//  FeedView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 17/11/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVStack(spacing:32){
                    ForEach(Post.MOCK_POSTS){post in
                        FeedsSelf(post: post)
                    }
                    
                }
                .padding(.top,8)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 80,height: 28)
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
