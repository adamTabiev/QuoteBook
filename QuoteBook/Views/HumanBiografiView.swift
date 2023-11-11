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
    HumanBiografiView(viewState: HumanBiografiView.ViewState(
        name: "Платон",
        briefBio: "древнегреческий философ 5 век до н.э., ученик Сократа, учитель Аристотеля.",
        biografi: "Афинский философ классического периода Древней Греции, основатель платонической школы мысли и Академии, первого высшего учебного заведения в западном мире. Он считается одним из самых важных и влиятельных людей в истории человечества и ключевой фигурой в истории древнегреческой и западной философии вместе со своим учителем Сократом и его самым известным учеником Аристотелем. Платона также часто называют одним из основателей западной религии и духовности. Так называемый неоплатонизм философов, таких как Плотин и Порфирий, сильно повлиял на христианство через таких отцов церкви, как Августин. Альфред Норт Уайтхед однажды заметил: «Наиболее правдоподобная общая характеристика европейской философской традиции состоит в том, что она представляет собой серию примечаний к Платону»."
        
    ))
}
