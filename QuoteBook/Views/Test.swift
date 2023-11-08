//
//  Test.swift
//  QuoteBook
//
//  Created by Адам Табиев on 07.11.2023.
//

import SwiftUI

struct Test: View {
    var body: some View {
                VStack(spacing: 0.0) {
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 300, height: 300)
                        .overlay {
                            Image(.платон)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 300, height: 300)
                                .clipped()
                        }
                    
                    Rectangle()
                        .fill(.linearGradient(
                            Gradient(colors: [Color.red, Color.blue]),
                            startPoint: .leading,
                            endPoint: .trailing))
                        .frame(width: 300, height: 100)
                    
                    RoundedRectangle(cornerRadius: 0.0)
                        .fill(Color.green)
                    // .foregroundColor(.blue)
                        .frame(width: 300, height: 300)
                }
                .cornerRadius(12)
                .overlay(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color(.gray), lineWidth: 4)
                )
                .shadow(radius: 20)
    }
}

#Preview {
    Test()
}
