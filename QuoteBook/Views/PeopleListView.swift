//
//  PeopleListView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 17.11.2023.
//

import SwiftUI

struct PeopleListView: View {
    @ObservedObject var vm: HumanViewModel
    
    private let _adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: _adaptiveColumns, spacing: 10) {
                ForEach(vm.humans) { human in
                    NavigationLink(destination: CommentView(vm: HumanViewModel())) {
                        VStack {
                            HumanCircleView(viewState: HumanCircleView.ViewState(imageName: human.name, size: 150))
                            Text(human.name)
                                .font(.title2)
                        }
                        .padding()
                    }
                }
            }
        }
        .navigationTitle("Авторы")
    }
}

#Preview {
    NavigationView {
        PeopleListView(vm: HumanViewModel())
            .toolbarTitleDisplayMode(.inline)
    }
}
