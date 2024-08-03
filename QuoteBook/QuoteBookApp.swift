//
//  QuoteBookApp.swift
//  QuoteBook
//
//  Created by Адам Табиев on 01.08.2024.
//

import SwiftUI
import Firebase

@main
struct QuoteBookApp: App {
    init() {
           FirebaseApp.configure()
       }
    
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}
