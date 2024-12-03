//
//  CompleteSignUpView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 19/11/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewmodel : RegistrationViewModel
    var body: some View {
        VStack(spacing:12){
            Spacer()
            Text("WelCome to Soial Media Application Explore \(viewmodel.username)")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top)
            
            Text("Click Below to complete Registration and start using Social Media")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.horizontal,24)
            
            
            Button{
            
                Task{try await viewmodel.createUser()}
            } label: {
                Text("Complete Signup")
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
    CompleteSignUpView()
}
