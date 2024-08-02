//
//  BiographyView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 01.08.2024.
//

import SwiftUI

struct BiographyView: View {
    struct ViewState {
        var imageName: String { return name }
        let name: String
        let biography: String?
    }
    
    let viewState: ViewState
    // @State private var fontSize: CGFloat = UIFont.labelFontSize
    
    var body: some View {
        
        ScrollView {
            VStack(spacing: 10) {
                HumanCircleView(viewState: HumanCircleView.ViewState(imageName: viewState.imageName, size: 200))
                    .padding()
                
                
                Text(viewState.name)
                    .font(.title)
                
                
                
                
                Divider()
                
                Text(viewState.biography ?? "Wrong in biography")
                    .padding(.horizontal)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .monospaced()
                    .frame(maxHeight: .infinity)
                    .padding()
                
            }
        }
    }
}

#Preview {
    BiographyView(viewState: BiographyView.ViewState(name: "Платон", biography: "афинский философ классического периода Древней Греции, основатель платонической школы мысли и Академии, первого высшего учебного заведения в западном мире. Он считается одним из самых важных и влиятельных людей в истории человечества и ключевой фигурой в истории древнегреческой и западной философии вместе со своим учителем Сократом и его самым известным учеником Аристотелем. Платона также часто называют одним из основателей западной религии и духовности. Так называемый неоплатонизм философов, таких как Плотин и Порфирий, сильно повлиял на христианство через таких отцов церкви, как Августин. Альфред Норт Уайтхед однажды заметил: «Наиболее правдоподобная общая характеристика европейской философской традиции состоит в том, что она представляет собой серию примечаний к Платону»."))
}
