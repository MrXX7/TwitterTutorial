//
//  FeedView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 14.01.2023.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                
            }
            Button(action: {}, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
                
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .cornerRadius(16)
            .clipShape(Circle())
            .padding()
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
