//
//  CreatePasswordView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 18/11/24.
//

import SwiftUI

struct CreatePasswordView: View {
        @EnvironmentObject var viewmodel : RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    var body: some View {
        VStack(spacing:12){
            Text("Create Password")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("You ,ll use this Password atlest to sign in to your account")
                .font(.footnote)
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            SecureField("Enter Your Password", text: $viewmodel.Password)
                .autocapitalization(.none)
                .modifier(IGTextFeildModifier())
                .padding(.top)
            
            
            NavigationLink{
                CompleteSignUpView()
                
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360,height: 44)
                    .cornerRadius(8,antialiased: true)
                    .background(Color(.pink))
                    .foregroundStyle(.white)
            }
            .padding(.vertical)
            
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading){
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
            }
        }
    }
}

#Preview {
    CreatePasswordView()
}
