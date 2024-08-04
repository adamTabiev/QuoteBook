//
//  HumanModel.swift
//  Collection
//
//  Created by Адам Табиев on 12.07.2024.
//

import Foundation
import FirebaseFirestoreSwift

//struct HumanModel: Identifiable, Codable {
//    var id = UUID()
//    var name: String
//    var briefBio: String
//    var biography: String?
//    var comments: [String] = []
//    
//    var  imageName: String { return name }
//}

struct HumanModel: Identifiable, Codable {
    @DocumentID var id: String?
    var name: String
    var briefBio: String
    var biography: String?
    var comments: [String] = []
    
    var  imageName: String { return name }
}
