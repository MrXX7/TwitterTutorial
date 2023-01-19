//
//  FeedView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 14.01.2023.
//

import SwiftUI

struct FeedView: View {
    
    @State var isShowingNewTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                VStack {
                    ForEach(0..<90) { _ in
                        TweetCell()
                    }
                }.padding()
            }
            Button(action: {
                isShowingNewTweetView.toggle()
            }, label: {
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
            .fullScreenCover(isPresented: $isShowingNewTweetView, content: {
                NewTweetView(isPresented: $isShowingNewTweetView)
            })
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
