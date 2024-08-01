//
//  ContentView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct MainScreen: View {
    @StateObject var vm = HumanViewModel()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 18) {
                NavigationLink("Авторы", destination: PeopleListView(vm: vm))
                    .font(.title)
                Divider()
                NavigationLink("Цитаты", destination: RandomCommentView(vm: HumanViewModel()).navigationTitle("Цитаты"))
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
