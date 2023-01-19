//
//  FilterButtonView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 18.01.2023.
//

import SwiftUI

enum TweetFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case.replies: return "Tweets & Replies"
        case.likes: return "Likes"
        }
    }
    
}

struct FilterButtonView: View {
    @Binding var selectedOption: TweetFilterOptions
    
    private let underlineWith = UIScreen.main.bounds.width / CGFloat(TweetFilterOptions.allCases.count)
    
    private var padding: CGFloat {
        let rawValue = CGFloat(selectedOption.rawValue)
        let count = CGFloat(TweetFilterOptions.allCases.count)
        return ((UIScreen.main.bounds.width / count) * rawValue) + 16
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            HStack {
                ForEach(TweetFilterOptions.allCases, id: \.self) { option in
                    Button(action: {}, label: {
                        Text(option.title)
                            .frame(width: underlineWith - 8)
                    })
                }
            }
            Rectangle()
                .frame(width: underlineWith, height: 3, alignment: .center)
                .foregroundColor(.blue)
                .animation(.spring())
        }
    }
}

struct FilterButtonView_Previews: PreviewProvider {
    static var previews: some View {
        FilterButtonView(selectedOption: .constant(.tweets))
    }
}
