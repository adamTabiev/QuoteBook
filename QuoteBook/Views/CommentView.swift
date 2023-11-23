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
                    .scrollTransition { content, phase in
                        content
                            .rotation3DEffect(.degrees(phase.value * -30.0),
                                              axis: (x: 0, y: 1, z: 0))
                            .opacity(phase.isIdentity ? 1 : 0.2)
                            .scaleEffect(x: phase.isIdentity ? 1.0 : 0.7,
                                         y: phase.isIdentity ? 1.0 : 0.7)
                            .offset(y: phase.isIdentity ? 0 : 50)
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
        CommentView(vm: HumanViewModel())
    }
}
