//
//  ContentView.swift
//  OtusFirstHomework
//
//  Created by Sergei Biryukov on 31.01.2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Tab("Home", systemImage: "house") {
                HomePage()
            }
            Tab("Friends", systemImage: "person.and.person") {
                FriendsPage()
            }
            
            Tab("Info Page", systemImage: "info.circle") {
                InfoPage()
            }
        }
    }
}

#Preview {
    ContentView()
}
