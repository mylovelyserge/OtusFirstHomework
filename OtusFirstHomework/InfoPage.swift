//
//  InfoPage.swift
//  OtusFirstHomework
//
//  Created by Sergei Biryukov on 31.01.2025.
//

import SwiftUI

struct InfoPage: View {
    @State private var showInfo = false
    
    var body: some View {
        Button("Show Info") {
            showInfo = true
        }
        .frame(width: 300, height: 30)
        .padding(20)
        .font(.headline)
        .background(Color.black)
        .foregroundColor(.white)
        .cornerRadius(20)
        
        
        .sheet(isPresented: $showInfo) {
            SheetView()
                .presentationDetents([.medium, .large])
                .presentationDragIndicator(.visible)
        }
    }
}

struct SheetView: View {
    var body: some View {
        Text("Hello, this is a sheet!")
            .font(.largeTitle)
            .foregroundColor(.black)
            .padding()
        
    }
}

#Preview {
    InfoPage()
}
