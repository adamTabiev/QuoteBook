//
//  RandomCommentView.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
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
                            destination: BiographyView(
                                viewState: BiographyView.ViewState(
                                    name: human.name,
                                    biography: human.biography
                                )
                            ),
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

