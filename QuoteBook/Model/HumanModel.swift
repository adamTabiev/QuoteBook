//
//  HumanModel.swift
//  QuoteBook
//
//  Created by Адам Табиев on 30.10.2023.
//

import Foundation

struct HumanModel: Identifiable {
    var id = UUID()
    var name: String
    var briefBio: String
    var biography: String?
    var comment: [String] = []
    
    var  imageName: String { return name }
}
