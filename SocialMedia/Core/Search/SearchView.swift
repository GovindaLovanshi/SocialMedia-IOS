//
//  SearchView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 18/11/24.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:12){
                    ForEach(User.MOCK_USERS){user in
                        NavigationLink(value: user){
                            HStack{
                                Image(user.profileImageUrl ?? "")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40,height: 40)
                                    .clipShape(Circle())
                                
                                VStack(alignment:.leading){
                                    Text(user.userName)
                                        .fontWeight(.semibold)
                                    
                                    if let fullName = user.fullName{
                                        Text(fullName)
                                    }
                                }
                                .font(.footnote)
                                
                                Spacer()
                            }
                            .foregroundStyle(.black)
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.top)
                .searchable(text: $searchText, prompt: "Search....")
            }
            .navigationDestination(for: User.self, destination: {user in
                ProfileView(user: user)
            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
