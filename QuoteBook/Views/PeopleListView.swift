//
//  PeopleListView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct PeopleListView: View {
    @ObservedObject var vm: HumanViewModel
    @State var selectedHumanIndex: Int? = nil
    @Environment(\.colorScheme) var colorScheme
    
    private let _adaptiveColumns = [GridItem(.adaptive(minimum: 150))]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: _adaptiveColumns, spacing: 10) {
                ForEach(vm.humans.indices, id: \.self) { index in
                    NavigationLink(destination: CommentView(vm: HumanViewModel(), selectedHumanIndex: $selectedHumanIndex), tag: index, selection: $selectedHumanIndex) {
                        VStack {
                            HumanCircleView(viewState: HumanCircleView.ViewState(imageName: vm.humans[index].name, size: 150))
                            Text(vm.humans[index].name)
                                .font(.title2)
                                .foregroundColor(colorScheme == .dark ? .white : .black)
                        }
                        .padding()
                        .onTapGesture {
                            selectedHumanIndex = index
                        }
                    }
                }
            }
        }
        .navigationTitle("Авторы")
        .background(.secondary.opacity(0.2))
    }
}

#Preview {
    NavigationView {
        PeopleListView(vm: HumanViewModel())
            .toolbarTitleDisplayMode(.inline)
    }
}
