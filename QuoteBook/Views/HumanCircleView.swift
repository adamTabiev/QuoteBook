//
//  HumanCircleView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct HumanCircleView: View {
    let imageName: String
    let size: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: CGFloat(size), height: CGFloat(size))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black.opacity(0.2), lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}


#Preview {
    HumanCircleView(imageName: "Платон", size: 300)
}
