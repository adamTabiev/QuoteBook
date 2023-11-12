//
//  HumanBiografiView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 10.11.2023.
//

import SwiftUI

struct HumanBiografiView: View {
    struct ViewState {
        var imageName: String { return name }
        let name: String
        let briefBio: String
        let biografi: String
    }
    let viewState: ViewState
    var body: some View {
        ScrollView {
            VStack {
                HumanCircleView(imageName: viewState.imageName, size: 300)
                Text(viewState.name)
                    .font(.title)
                Divider()
                
                Text(viewState.biografi)
                    .font(.title3)
                    .multilineTextAlignment(.center)
                    .padding()
            }
        }
    }
}

#Preview {
    HumanBiografiView(viewState: HumanBiografiView.ViewState.sample)
}
