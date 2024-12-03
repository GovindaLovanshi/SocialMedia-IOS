//
//  MainTabView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 16/11/24.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedInddex = 0
    var body: some View {
        TabView(selection: $selectedInddex){
            FeedView()
                .onAppear{
                    selectedInddex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            SearchView()
                .onAppear{
                    selectedInddex = 1
                }
                .tabItem{
                    Image(systemName: "paperplane")
                }.tag(1)
            
            UploadPostView(tabIndex: $selectedInddex)
                .onAppear{
                    selectedInddex = 2
                }
                .tabItem{
                    Image(systemName: "plus.square")
                }.tag(2)
            
            Text("Notifiy")
                .onAppear{
                    selectedInddex = 3
                }
                .tabItem{
                    Image(systemName: "heart")
                }.tag(3)

            
            CurrentProfileView(user:User.MOCK_USERS[0])
                .onAppear{
                    selectedInddex = 4
                }
                .tabItem{
                    Image(systemName: "person")
                }.tag(4)

        }
        .accentColor(.blue)
    }
}

#Preview {
    MainTabView()
}

//
//  LoginView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 18/11/24.
//

import SwiftUI

struct LoginView: View {
        
    @StateObject var viewmodel = LoginViewModel()
    var body: some View {
        NavigationStack{
            VStack{
                
                Spacer()
                Image(systemName: "heart")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 220,height: 100)
                
                VStack{
                    TextField("Enter Your Email", text: $viewmodel.email)
                        .autocapitalization(.none)
                        .modifier(IGTextFeildModifier())
                    
                    
                    
                    SecureField("Enter Your Password", text: $viewmodel.password)
                        .modifier(IGTextFeildModifier())
                }
                
                Button{
                    
                }label: {
                    Text("Forget Password")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .padding(.top)
                        .padding(.trailing,28)
                        
                }
                .frame(maxWidth: .infinity,alignment: .trailing)
                
                Button{
                    Task{ try await viewmodel.signIn()}
                }label: {
                    Text("Login")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .frame(width: 360,height: 44)
                        .cornerRadius(8,antialiased: true)
                        .background(Color(.pink))
                        .foregroundStyle(.white)
                        
                }
                .padding(.vertical)
                
                HStack{
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width / 2)-40,height: 0.5)
                        .foregroundStyle(.gray)
                    
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(.gray)
                    
                    Rectangle()
                        .frame(width:(UIScreen.main.bounds.width / 2)-40,height: 0.5)
                        .foregroundStyle(.gray)
                }
                .foregroundStyle(.gray)
                
                HStack{
                    Image(systemName: "house")
                        .resizable()
                        .frame(width: 20,height: 20)
                    
                    Text("Continue With Facebook")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundStyle(Color(.systemBlue))
                }
                .padding(.top,8)
                
                Spacer()
                
                Divider()
                
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden(true)
                }label: {
                    HStack(spacing:3){
                        Text("Don`t have a Account")
                        
                        Text("Sign up")
                            .fontWeight(.semibold)
                    }
                    .font(.footnote)
                }
                .padding(.vertical,16)
            }
        }
    }
}

#Preview {
    LoginView()
}
