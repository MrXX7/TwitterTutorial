//
//  TextArea.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 19.01.2023.
//

import SwiftUI

struct TextArea: View {
    
    @Binding var text: String
    let placeHolder: String
    
    init(_ placeHolder: String, text: Binding<String>) {
        self._text = text
        self.placeHolder = placeHolder
        UITextView.appearance().backgroundColor = .clear
    }
    
    var body: some View {
        ZStack (alignment: .leading) {
            if text.isEmpty {
                Text(placeHolder)
                    .foregroundColor(Color(.placeholderText))
                    .padding(.horizontal, 8)
                    .padding(.vertical, 12)
            }
           TextEditor(text: $text)
        } .font(.body)
    }
}
