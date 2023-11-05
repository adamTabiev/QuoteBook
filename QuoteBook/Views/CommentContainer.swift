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
            Image(viewState.imageName)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)
            Spacer()
            
            NavigationLink(destination: viewState.destination) {
                Text(viewState.name)
                    .font(.title)
            }
            Spacer()
            
            Text(viewState.briefBio)
                .font(.subheadline)
                .padding()
            Divider()
            Text(viewState.comment.randomElement() ?? "Error")
                .font(.headline)
                .multilineTextAlignment(.center)
                .padding()
        }
        .frame(width: 300, height: 600)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.orange, lineWidth: 4))
        //  .cornerRadius(20)
        .shadow(radius: 10)
        .padding()
        
    }
}

#Preview {
    NavigationView {
        CommentContainer(viewState: CommentContainer.ViewState(
            name: "Карл Саган",
            destination: Text("Biography View"),
            briefBio: "Американский астрофизик и популяризатор науки",
            comment: [
                "Мы звёздная пыль, исследующая звёзды.",
                "Наш дом — это вселенная.",
                "Есть места, где уместно спорить о деталях, но не оценивать значимость. Это как спорить, сколько километров до середины океана."
            ]
        ))
    }
}
