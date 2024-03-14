//
//  LoginInteractor.swift
//  Akir4Mangas
//
//  Created by Alberto Alegre Bravo on 14/3/24.
//

import Foundation

protocol LoginInteractorProtocol {
    func loginUser(username: String, password: String) async throws -> Bool
    func registerUser() async throws -> Bool
}

struct LoginInteractor: LoginInteractorProtocol {
    func loginUser(username: String, password: String) async throws -> Bool {
        return true
    }
    
    func registerUser() async throws -> Bool {
        return true
    }
    
    
}
