//
//  MainPage.swift
//  OtusFirstHomework
//
//  Created by Sergei Biryukov on 31.01.2025.
//

import SwiftUI

struct HomePage: View {
    var body: some View {
        VStack(spacing: 10) {
            Image("house")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("Wellcome")
                .font(.largeTitle)
                .fontWeight(.black)
                
        }
            
    }
}

#Preview {
    HomePage()
}
