//
//  HumanCommentView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 05.11.2023.
//

import SwiftUI

struct HumanCommentView: View {
    @StateObject var vm = HumanViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(vm.humans) { human in
                        CommentContainer(viewState: CommentContainer.ViewState(
                            name: human.name,
                            destination: Text("Biography View"), briefBio: human.briefBio,
                            comment: human.comment)
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    HumanCommentView()
}
