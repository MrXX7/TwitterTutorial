//
//  ProfileHeaderView.swift
//  TwitterTutorial
//
//  Created by Oncu Can on 18.01.2023.
//

import SwiftUI

struct ProfileHeaderView: View {
    
    var body: some View {
        VStack {
            Image("batman")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 120, height: 120)
                .cornerRadius(120 / 2)
                .shadow(color: .black, radius: 6, x: 0.0, y: 0.0)
            
            Text("Bruce Wayne")
                .font(.system(size: 16, weight: .semibold))
                .padding(.top, 8)
            
            Text("@batman")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Billionaire by day, dark kngiht by night")
                .font(.system(size: 14))
                .padding(.top, 8)
            
            HStack (spacing: 40){
                VStack {
                    Text("12")
                        .font(.system(size: 16, weight: .bold))
                    
                    Text("Followers")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
                VStack {
                    Text("12")
                        .font(.system(size: 16, weight: .bold))
                    
                    Text("Following")
                        .font(.footnote)
                        .foregroundColor(.gray)
                }
            } .padding()
            ProfileActionButtonView(isCurrentUser: false)
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
