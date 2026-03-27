//
//  BookPageView.swift
//  TheUltimateGuide
//
//  Created by Rodrigo Franchini Cecchin on 26/03/26.
//

import SwiftUI

struct BookPageView: View {
    let text: String
    let page: String
    
    var body: some View {
        VStack{
            Text("“")
                .font(.system(size: 60))
                .foregroundColor(.black.opacity(0.2))
            
            ZStack {
                RoundedRectangle(cornerRadius: 24, style: .continuous)
                    .fill(.ultraThinMaterial)
                    .background(
                        RoundedRectangle(cornerRadius: 24).fill(Color.white.opacity(0.06))
                    )
                    .shadow(color: Color.black.opacity(0.25), radius: 16, x: 0, y: 8)
                
                Text(text)
                    .font(.system(size: 22, weight: .medium, design: .serif))
                    .foregroundColor(.black.opacity(0.9))
                    .multilineTextAlignment(.center)
                    .padding(22)
            }
            .frame(maxWidth: 720)
            .padding(.horizontal, 24)
            
            Spacer()
            
            HStack{
                Spacer()
                Text(page)
                    .font(.footnote)
                    .foregroundColor(.black.opacity(0.4))
                    .padding(40)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(AppGradients.paper)
    }
}

#Preview {
    BookPageView(text: "The biggest club in the world is Sport Club Internacional", page: "79")
}
