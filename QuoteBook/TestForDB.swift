//
//  TestForDB.swift
//  QuoteBook
//
//  Created by Адам Табиев on 03.08.2024.
//

import SwiftUI
import FirebaseFirestore
import FirebaseFirestoreSwift

struct TestForDB: View {
    @FirestoreQuery(collectionPath: "People") var items: [HumanModel]
    
    var body: some View {
        List {
            ForEach(items) { item in
                Text(item.name)
            }
        }
    }
}

#Preview {
    TestForDB()
}
