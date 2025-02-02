//
//  MainPage.swift
//  OtusFirstHomework
//
//  Created by Sergei Biryukov on 31.01.2025.
//

import SwiftUI

struct HomePage: View {
    @State private var selectedFriend: String?
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Image("house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300)
                Text("Wellcome")
                    .font(.largeTitle)
                    .fontWeight(.black)
                
                NavigationLink(destination: FriendDetailView(friendName: selectedFriend), tag: "John", selection: $selectedFriend) {
                    Button("John's details") {
                        selectedFriend = "John"
                    }
                    .padding()
                    .background(Color.blue)
                    .foregroundStyle(.white)
                    .font(.headline)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
                
            }
        }
            
    }
}

#Preview {
    HomePage()
}
