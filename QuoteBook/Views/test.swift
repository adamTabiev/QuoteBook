//
//  test.swift
//  QuoteBook
//
//  Created by Адам Табиев on 22.11.2023.
//

import SwiftUI

struct test: View {
    var body: some View {
        ScrollView {
            ForEach(0..<50) { index in
                Text("This is item # \(index)")
                    .font(.headline)
                    .frame(height: 200)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 10)
                    .padding()
            }
        }
    }
}

#Preview {
    test()
}

