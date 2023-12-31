//
//  CommentContainerView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 22.11.2023.
//

import SwiftUI

struct CommentContainerView<Destination: View>: View {
    struct ViewState {
        var imageName: String { return name }
        let name: String
        let destination: Destination
        let briefBio: String
        let comment: String
    }
    let viewState: ViewState
    
    var body: some View {
        VStack {
            HumanCircleView(viewState: HumanCircleView.ViewState(imageName: viewState.imageName, size: 300))
                .padding()
            
            NavigationLink(destination: viewState.destination) {
                Text(viewState.name)
                    .font(.title)
            }
            .frame(width: 350, height: 50)
            
            Text(viewState.briefBio)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .frame(width: 350, height: 50)
            
            Divider()
            
            Text(viewState.comment)
                .padding(.horizontal)
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment (.center)
                .monospaced()
                .frame(width: 350, height: 250)
        }
        .background(Color.white)
        .cornerRadius(18)
        .overlay(
            RoundedRectangle(cornerRadius: 18)
                .stroke(Color(.gray), lineWidth: 0.2)
        )
        .padding()
    }
}

#Preview {
    NavigationView {
        CommentContainerView(viewState: CommentContainerView.ViewState(
            name: "Платон",
            destination: Text("Biography View"),
            briefBio: "древнегреческий философ 5 век до н.э., ученик Сократа, учитель Аристотеля.",
            comment: "Стараясь о счастье других, мы находим свое собственное."
        ))
    }
}


