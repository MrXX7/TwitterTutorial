//
//  CustomTextField.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 19.01.2023.
//

import SwiftUI

struct CustomTextField: View {
    @Binding var text: String
    let placeholder: Text
    let imageName: String
    
    var body: some View {
        ZStack (alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.9)))
                    .padding(.leading, 40)
            }
            HStack (spacing: 16) {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .foregroundColor(.white)
                
                    TextField("", text: $text)
            }
        }
    }
}
