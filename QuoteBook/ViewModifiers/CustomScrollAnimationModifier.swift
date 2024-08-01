//
//  CustomScrollAnimationModifier.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct CustomScrollAnimationModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .scrollTransition { content, phase in
                content
                    .rotation3DEffect(.degrees(phase.value * -30.0), axis: (x: 0, y: 1, z: 0))
                    .opacity(phase.isIdentity ? 1 : 0.2)
                    .scaleEffect(x: phase.isIdentity ? 1.0 : 0.7, y: phase.isIdentity ? 1.0 : 0.7)
                    .offset(y: phase.isIdentity ? 0 : 50)
            }
    }
}
