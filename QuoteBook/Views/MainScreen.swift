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
                NavigationLink("Авторы", destination: EmptyView())
                    .font(.title)
                Divider()
                NavigationLink("Цитаты", destination: EmptyView())
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
