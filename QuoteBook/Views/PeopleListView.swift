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
    }
}

#Preview {
    NavigationView {
        PeopleListView(vm: HumanViewModel())
            .toolbarTitleDisplayMode(.inline)
    }
}
