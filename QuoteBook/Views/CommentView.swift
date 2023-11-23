//
//  CommentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 22.11.2023.
//

import SwiftUI

struct CommentView: View {
    @ObservedObject var vm: HumanViewModel
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(vm.humans) { human in
                    CommentContainerView(viewState: CommentContainerView.ViewState(
                        name: human.name,
                        destination: Text("Biography View"),
                        briefBio: human.briefBio,
                        comment: human.comment.randomElement() ?? ""
                    ))
                    .containerRelativeFrame(.horizontal, count: 1, spacing: 1.0)
                    .modifier(CustomScrollAnimationModifier())
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.viewAligned)
    }
}

#Preview {
    NavigationView {
        CommentView(vm: HumanViewModel())
    }
}
