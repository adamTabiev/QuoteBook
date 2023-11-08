//
//  CommentContainer.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct CommentContainer<Destination: View>: View {
    struct ViewState {
        var imageName: String { return name }
        let name: String
        let destination: Destination
        let briefBio: String
        let comment: [String]
    }
    
    let viewState: ViewState
    
    var body: some View {
        VStack {
            HumanCircleView(image: Image(viewState.imageName), size: 250)
                .padding(.top)
            
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
            
            Text(viewState.comment.randomElement() ?? "Error")
                .padding(.horizontal)
                .font(.title2)
                .font(.callout)
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
        CommentContainer(viewState: CommentContainer.ViewState(
            name: "Платон",
            destination: Text("Biography View"),
            briefBio: "древнегреческий философ 5 век до н.э., ученик Сократа, учитель Аристотеля.",
            comment: ["Воспитание есть усвоение хороших привычек.",
                      "Стараясь о счастье других, мы находим свое собственное.",
                      "Наилучшее воспитание молодых людей, да и самих себя, заключается не во внушениях, а в явном для всех осуществлении в собственной жизни того, что внушается другому."]
        ))
    }
}

