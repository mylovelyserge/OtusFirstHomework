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
                    Text("Details for \(name)")
                        .navigationTitle("Friend")
                        .navigationBarTitleDisplayMode(.inline)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Friends")
            
        }
    }
}

#Preview {
    FriendsPage()
}
