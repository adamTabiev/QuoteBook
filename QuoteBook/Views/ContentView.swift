//
//  ContentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
                .overlay {
                    CommentContainer(viewState: CommentContainer.ViewState(
                        name: "Платон",
                        destination: Text("Biography View"),
                        briefBio: "древнегреческий философ 5 век до н.э., ученик Сократа, учитель Аристотеля.",
                        comment: ["Воспитание есть усвоение хороших привычек.",
                                  "Стараясь о счастье других, мы находим свое собственное.",
                                  "Наилучшее воспитание молодых людей, да и самих себя, заключается не во внушениях, а в явном для всех осуществлении в собственной жизни того, что внушается другому."]
                    ))
                    .shadow(radius: 8)
                }
        }
    }
}

#Preview {
    NavigationView {
        ContentView()
    }
}
