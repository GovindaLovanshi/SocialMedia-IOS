//
//  UploadPostView.swift
//  SocialMedia
//
//  Created by Govinda lovanshi on 27/11/24.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresent = false
    @StateObject var viewModel  = UploadViewModel()
    @Binding var tabIndex :Int
    
    var body: some View {
        VStack{
            // action and tool
            HStack{
                Button{
                    caption = ""
                    viewModel.selectedImage = nil
                    viewModel.postImage = nil
                    tabIndex = 0
                }label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                Button{
                    
                }label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
                
               
            }
            .padding(.horizontal)
            
            // post img and caption
            
            HStack(spacing:8){
                if let image = viewModel.postImage{
                    image
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100,height: 100)
                        .clipped()
                }
                
                TextField("Enter You Caption...",text: $caption,axis: .vertical)
            }
            
            Spacer()
        }
        .onAppear{
            imagePickerPresent.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresent, selection: $viewModel.selectedImage)
    }
}

#Preview {
    UploadPostView(tabIndex: .constant(0))
}
    
