//
//  ContentView.swift
//  TheUltimateGuide
//
//  Created by Rodrigo Franchini Cecchin on 25/03/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            TabView {
                BookCoverView()
                BookPageView(text: "Wake up early. Successful people start their day before sunrise.", page: "#2")
                BookPageView(text: "Plan your day with intention. Every minute matters.", page: "#3")
                BookPageView(text: "Eliminate distractions. Focus is your greatest asset.", page: "#4")
                BookPageView(text: "Stay consistent. Discipline beats motivation.", page: "#5")
                BookPageView(text: "And most importantly…", page: "#6")
                BookFinalPageView()
            }
            .tabViewStyle(.page)
            .ignoresSafeArea()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

#Preview {
    ContentView()
}
