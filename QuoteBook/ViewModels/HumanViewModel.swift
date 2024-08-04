//
//  HumanViewModel.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import Combine
import Foundation
import FirebaseFirestore
import FirebaseFirestoreSwift


class HumanViewModel: ObservableObject {
    @Published var humans: [HumanModel] = []
    private var db = Firestore.firestore()
    private var cancellables = Set<AnyCancellable>()

    init() {
        fetchHumans()
    }

    func fetchHumans() {
        db.collection("People").getDocuments { (querySnapshot, error) in
            if let error = error {
                print("Error getting documents: \(error)")
                return
            }
            self.humans = querySnapshot?.documents.compactMap { document -> HumanModel? in
                try? document.data(as: HumanModel.self)
            } ?? []
        }
    }
}
