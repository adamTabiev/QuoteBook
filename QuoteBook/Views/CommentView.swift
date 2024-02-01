//
//  CommentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 22.11.2023.
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
                        CommentContainerView(viewState: CommentContainerView.ViewState(
                            name: vm.humans[selectedIndex].name,
                            destination: Text("Biography View"),
                            briefBio: vm.humans[selectedIndex].briefBio,
                            comment: comment
                        ))
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
