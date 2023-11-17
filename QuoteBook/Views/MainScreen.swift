//
//  ContentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct MainScreen: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 18) {
                NavigationLink("Авторы", destination: PeopleListView())
                    .font(.title)
                Divider()
                NavigationLink("Цитаты", destination: EmptyView().navigationTitle("Цитаты"))
                    .font(.title)
            }
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    NavigationView {
        MainScreen()
    }
}
