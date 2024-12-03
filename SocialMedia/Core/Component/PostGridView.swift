//
//  PostGridView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 26/11/24.
//

import SwiftUI

struct PostGridView: View {
    
    let post:[Post]
    private let gridItems:[GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    private let imageDimension :CGFloat = (UIScreen.main.bounds.width / 3 ) - 1
    var body: some View {
        LazyVGrid(columns: gridItems,spacing: 1){
            ForEach(post){posts in
                Image(posts.imageUrl)
                    .resizable()
                    .scaledToFill()
                    .frame( width: imageDimension, height: imageDimension)
                    .clipped()
                
            }
        }
    }
    }


#Preview {
    PostGridView(post: Post.MOCK_POSTS)
}
