//
//  SplashScreenView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var _splashScreenWasShown = false
    @State private var _size = 0.8
    @State private var _opacity = 0.5
    
    var body: some View {
        if _splashScreenWasShown {
            MainScreen()
        } else {
            ZStack {
                Color.black
                    .ignoresSafeArea()
                VStack {
                    Image(systemName: "text.quote")
                        .font(.system(size: 80))
                    Text("Quotes")
                        .font(.largeTitle)
                }
                .foregroundColor(.white)
                .scaleEffect(_size)
                .opacity(_opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.9)) {
                        _size = 0.9
                        _opacity = 1.0
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            self._splashScreenWasShown = true
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    SplashScreenView()
}


