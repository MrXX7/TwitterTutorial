//
//  NewTweetView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 19.01.2023.
//

import SwiftUI

struct NewTweetView: View {
    
    @Binding var isPresented: Bool
    @State var captionText: String = ""
    
    var body: some View {
        NavigationView¬†{
            VStack {
                HStack (alignment: .top) {
                    Image("batman")
                        .resizable()
                        .scaledToFill()
                        .clipped()
                        .frame(width: 64, height: 64)
                        .cornerRadius(32)
                    
                  TextArea("What'shappening", text: $captionText)
                    
                    Spacer()
                }
                .padding()
                .navigationBarItems(
                    leading: Button(action: {
                        isPresented.toggle()
                    }, label: {
                        Text("Cancel")
                            .foregroundColor(.blue)
                    }),
                    trailing: Button(action: {}, label: {
                        Text("Tweet")
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .clipShape(Capsule())
                }))
                Spacer()
            }
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView(isPresented: .constant(true))
    }
}
