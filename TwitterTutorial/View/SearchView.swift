//
//  SearchView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 15.01.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText = ""
    var body: some View {
        ScrollView {
            SearchBar(text: $searchText)
                .padding()
            
            VStack (alignment: .leading){
                ForEach(0..<19) { _ in
                    HStack { Spacer() }
                        
                    NavigationLink(destination: UserProfileView(), label: {
                        UserCell()
                    })
                    }
                }.padding(.leading)
            }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
