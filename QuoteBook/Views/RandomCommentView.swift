//
//  RandomCommentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.11.2023.
//

import SwiftUI

struct RandomCommentView: View {
    @ObservedObject var vm: HumanViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                let allComments = vm.humans.flatMap { $0.comments }
                let shuffledComments = allComments.shuffled()
                
                ForEach(shuffledComments, id: \.self) { comment in
                    if let human = vm.humans.first(where: { $0.comments.contains(comment) }) {
                        CommentContainerView(viewState: CommentContainerView.ViewState(
                            name: human.name,
                            destination: Text("Biography View"),
                            briefBio: human.briefBio,
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
        RandomCommentView(vm: HumanViewModel())
    }
}

