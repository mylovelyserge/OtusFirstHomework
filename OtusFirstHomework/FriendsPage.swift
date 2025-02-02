//
//  FriendsPage.swift
//  OtusFirstHomework
//
//  Created by Sergei Biryukov on 31.01.2025.
//

import SwiftUI

struct FriendsPage: View {
    @State private var names: [String] = ["John", "Anna", "Ivar", "Sophie", "Michael", "Andrew"]
    
    var body: some View {
        NavigationView {
            List(names, id: \.self) { name in
                NavigationLink(name) {
                    FriendDetailView(friendName: name)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Friends")
            
        }
    }
}

struct FriendDetailView: View {
    let friendName: String?
    
    var body: some View {
        Text("Details for \(friendName ?? "Unknown")")
            .navigationTitle("Friend")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    FriendsPage()
}
