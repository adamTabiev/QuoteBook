//
//  HumanCircleView.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import SwiftUI

struct HumanCircleView: View {
    
    var body: some View {
        VStack(spacing: 20) {
            Image("Платон")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 200, height: 200)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.black.opacity(0.2), lineWidth: 4))
                    .shadow(radius: 10)
            }
            
            Text("Платон")
                .font(.title)
                .foregroundColor(Color.blue)
                .bold()
            
            Text("древнегреческий философ 5 век до н.э., ученик Сократа, учитель Аристотеля.")
                .font(.footnote)
                .opacity(0.7)
                .padding(.horizontal)
            
            Divider()
            
            Text("Наилучшее воспитание молодых людей, да и самих себя, заключается не во внушениях, а в явном для всех осуществлении в собственной жизни того, что внушается другому.")
                .font(.callout)
                .multilineTextAlignment(.center)
                .monospaced()
            
            
                .fontWeight(.bold)
                .padding(.horizontal)
            
        }
    }


#Preview {
    HumanCircleView()
}
