//
//  AppGradient.swift
//  TheUltimateGuide
//
//  Created by Rodrigo Franchini Cecchin on 25/03/26.
//

import SwiftUI

struct AppGradients {
    
    static let playful = LinearGradient(
        colors: [.purple, .pink, .orange],
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
    static let paper = LinearGradient(
        colors: [
            Color(red: 0.96, green: 0.91, blue: 0.82),
            Color(red: 0.85, green: 0.78, blue: 0.65)
        ],
        startPoint: .top,
        endPoint: .bottom
    )
    
    static let punchline = LinearGradient(
        stops: [
            .init(color: Color(red: 1.00, green: 0.90, blue: 0.12), location: 0.0),
            .init(color: Color(red: 1.00, green: 0.65, blue: 0.10), location: 0.5),
            .init(color: Color(red: 0.95, green: 0.35, blue: 0.10), location: 1.0)
        ],
        startPoint: .leading,
        endPoint: .trailing
    )
}
