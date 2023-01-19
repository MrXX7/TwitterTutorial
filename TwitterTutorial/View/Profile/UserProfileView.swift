//
//  UserProfileView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 18.01.2023.
//

import SwiftUI

struct UserProfileView: View {
    
    @State var selectedFilter: TweetFilterOptions = .tweets
    var body: some View {
        ScrollView {
            VStack {
                ProfileHeaderView()
                    .padding()
                FilterButtonView(selectedOption: $selectedFilter)
                
                ForEach(0..<9) { tweet in
                    TweetCell()
                }
            }
            .navigationTitle("batman")
        }
    }
}

struct UserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UserProfileView()
    }
}
