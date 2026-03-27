//
//  FirstPage.swift
//  TheUltimateGuide
//
//  Created by Rodrigo Franchini Cecchin on 25/03/26.
//

import SwiftUI

struct BookCoverView: View {
    var body: some View {
        VStack{
            Image(systemName: "apple.books.pages.fill")
                .font(.system(size: 90))
                .symbolRenderingMode(.hierarchical)
                .foregroundStyle(.white)
                .shadow(radius: 20)
                .scaleEffect(1.05)
                .padding(.bottom, 10)
            
            Text("The Ultimate Guide to Peak Productivity")
                .font(.system(size: 40  , weight: .heavy, design: .rounded))
                .foregroundColor(.white)
                .multilineTextAlignment(.center)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 0, y: 3)
                .padding(.bottom, 10)
            
            Text("Let's begin-just swipe forward. Going back isn't part of the system.")
                .font(.system(size: 25, weight: .heavy, design: .rounded))
                .foregroundStyle(
                    LinearGradient(
                        colors: [.white, .yellow],
                        startPoint: .top,
                        endPoint: .bottom
                    )
                )
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppGradients.playful)
    }
}

#Preview {
    BookCoverView()
}
