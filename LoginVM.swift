//
//  LoginVM.swift
//  Akir4Mangas
//
//  Created by Alberto Alegre Bravo on 14/3/24.
//

import Foundation

final class LoginVM: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    
    @Published var isLoggedOk = false
    @Published var showLoginError = false
    
    func userLogin() {
        
    }
    
    func userRegister() {
        
    }
}
