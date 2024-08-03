//
//  HumanCircleView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct HumanCircleView: View {
    struct ViewState {
        let imageName: String
        let size: Int
    }
    
    let viewState: ViewState
    
    var body: some View {
        VStack(spacing: 20) {
            Image(viewState.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: CGFloat(viewState.size), height: CGFloat(viewState.size))
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.black.opacity(0.2), lineWidth: 4))
                .shadow(radius: 10)
        }
    }
}


#Preview {
    HumanCircleView(viewState: HumanCircleView.ViewState(imageName: "Платон", size: 250))
} 
