//
//  leae_conclusionApp.swift
//  leae_conclusion
//
//  Created by Aluno 50 on 05/05/25.
//

import SwiftUI

@main
struct leae_conclusionApp: App {
    @AppStorage("isLoggedIn") private var isLoggedIn = false

    var body: some Scene {
        WindowGroup {
            if isLoggedIn {
                MainAppView()
                    .id("mainAppView") // Força a reconstrução da view
            }
//            else {
//                LoginView()
//                    .id("loginView") // Força a reconstrução da view
            }
        }
    }
//}
