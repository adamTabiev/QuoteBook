//
//  HumanCircleView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct HumanCircleView: View {
    let humanImage: String
    
    var body: some View {
        if let uiImage = UIImage(named: humanImage) {
            Image(uiImage: uiImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black.opacity(0.2), lineWidth: 4))
                .shadow(radius: 10)
        } else {
            Text("Изображение не найдено")
        }
    }
}

#Preview {
    HumanCircleView(humanImage: "Платон")
}
