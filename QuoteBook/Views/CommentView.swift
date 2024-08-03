//
//  CommentView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import SwiftUI

struct CommentView: View {
    @ObservedObject var vm: HumanViewModel
    @Binding var selectedHumanIndex: Int?
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                if let selectedIndex = selectedHumanIndex {
                    let shuffledComments = vm.humans[selectedIndex].comments.shuffled()
                    
                    ForEach(shuffledComments, id: \.self) { comment in
                        CommentContainerView(
                            viewState: CommentContainerView.ViewState(
                                name: vm.humans[selectedIndex].name,
                                destination: BiographyView(
                                    viewState: BiographyView.ViewState(
                                        name: vm.humans[selectedIndex].name,
                                        biography: vm.humans[selectedIndex].biography
                                    )
                                ),
                                briefBio: vm.humans[selectedIndex].briefBio,
                                comment: comment
                            )
                        )
                        .containerRelativeFrame(.horizontal, count: 1, spacing: 1.0)
                        .modifier(CustomScrollAnimationModifier())
                    }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    NavigationView {
        CommentView(vm: HumanViewModel(), selectedHumanIndex: .constant(0))
    }
}
