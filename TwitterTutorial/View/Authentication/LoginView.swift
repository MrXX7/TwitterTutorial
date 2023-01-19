//
//  LoginView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 19.01.2023.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        ZStack {
            VStack {
                Image("twitter-logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    .padding(.top, 88)
                
                VStack {
                    CustomTextField(text: $email, placeholder: Text("Email"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                    CustomTextField(text: $password, placeholder: Text("Password"))
                        .padding()
                        .background(Color(.init(white: 1, alpha: 0.15)))
                        .cornerRadius(10)
                        .padding()
                        .foregroundColor(.white)
                }
                
                Spacer()
            }
        }
        .background(Color(#colorLiteral(red: 0.1825715601, green: 0.6299551129, blue: 0.9542170167, alpha: 1)))
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
