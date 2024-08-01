//
//  CommentContainerView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
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
    @State private var fontSize: CGFloat = UIFont.labelFontSize

    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.gray, lineWidth: 0.4)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay(
                VStack(spacing: 10) {
                    HumanCircleView(viewState: HumanCircleView.ViewState(imageName: viewState.imageName, size: 200))
                        .padding()

                    NavigationLink(destination: viewState.destination) {
                        Text(viewState.name)
                            .font(.title)
                    }

                    Text(viewState.briefBio)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal)

                    Divider()

                    Text(viewState.comment)
                        .padding(.horizontal)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .monospaced()
                        .frame(maxHeight: .infinity)

                }
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
