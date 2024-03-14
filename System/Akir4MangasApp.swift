//
//  Akir4MangasApp.swift
//  Akir4Mangas
//
//  Created by Alberto Alegre Bravo on 14/3/24.
//

import SwiftUI

@main
struct Akir4MangasApp: App {
    @StateObject var loginVM = LoginVM()
    
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(loginVM)
        }
    }
}
