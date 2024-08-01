//
//  HumanViewModel.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
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
