//
//  BookFinalPage.swift
//  TheUltimateGuide
//
//  Created by Rodrigo Franchini Cecchin on 26/03/26.
//

import SwiftUI

struct BookFinalPageView: View {
    @State private var showSetup = false
    @State private var showPunchline = false
    @Environment(\.accessibilityReduceMotion) private var reduceMotion
    
    var body: some View {
        ZStack {
            AppGradients.punchline
                .ignoresSafeArea()
            
            VStack(spacing: 24) {
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: 28, style: .continuous)
                        .fill(.ultraThinMaterial)
                        .background(
                            RoundedRectangle(cornerRadius: 28).fill(Color.white.opacity(0.06))
                        )
                        .shadow(color: Color.black.opacity(0.35), radius: 20, x: 0, y: 10)
                    
                    Text("Close this app and go do your work.")
                        .font(.system(size: 34, weight: .heavy, design: .rounded))
                        .foregroundStyle(.white)
                        .multilineTextAlignment(.center)
                        .padding(28)
                        .accessibilityLabel("Punchline: Close this app and go do your work.")
                }
                .frame(maxWidth: 720)
                .padding(.horizontal, 24)
                .scaleEffect(showPunchline ? 1 : 0.6)
                .rotationEffect(Angle(degrees: showPunchline ? 0 : -20))
                .opacity(showPunchline ? 1 : 0)
                .animation(reduceMotion ? .default : .easeIn(duration: 0.45), value: showPunchline)
                
                Spacer()
            }
        }
        .onAppear {
            if reduceMotion {
                showSetup = true
                showPunchline = true
            } else {
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    withAnimation(.easeOut(duration: 0.35)) { showSetup = true }
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                    withAnimation(.easeIn(duration: 0.2)) {
                        showPunchline = true
                    }
                    triggerEffects()
                }
            }
        }
    }
    
    private func triggerEffects() {
#if canImport(UIKit)
        let generator = UIImpactFeedbackGenerator(style: .heavy)
        generator.impactOccurred()
#endif
    }
}

#Preview {
    BookFinalPageView()
}
