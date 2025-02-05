//
//  LoginViewModel.swift
//  Library
//
//  Created by Dionicio Cruz Velázquez on 2/5/25.
//

import SwiftUI

@available(iOS 13.0, *)
class LoginViewModel: AuthViewModel {
    @Published var email: String = ""
    @Published var password: String = ""
    
    private let keychain: KeychainManager

    init(authManager: AuthManager, keychain: KeychainManager = KeychainManager()) {
        self.keychain = keychain
        super.init(authManager: authManager)
        loadCredentials()
    }

    func login() {
        authManager.signIn(username: email, password: password)
        handleActionResult()
    }

    func signUp() {
        authManager.showSignUp()
    }

    func loadCredentials() {
        email = keychain.get(key: "email") ?? ""
    }

    override func clearErrorMessage() {
        super.clearErrorMessage()
    }
}
