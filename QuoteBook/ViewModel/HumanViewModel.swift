//
//  HumanViewModel.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import Foundation

class HumanViewModel: ObservableObject {
    @Published var humans: [HumanModel] = []
    
    init() {
        getData()
    }
    
    func getData() {
        self.humans = Data
    }
}
