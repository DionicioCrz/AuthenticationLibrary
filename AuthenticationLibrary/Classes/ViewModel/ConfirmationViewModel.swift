//
//  ConfirmationViewModel.swift
//  Library
//
//  Created by Dionicio Cruz Velázquez on 2/5/25.
//

import SwiftUI

@available(iOS 13.0, *)
class ConfirmationViewModel: AuthViewModel {
    @Published var confirmationCode: String = ""
    var username: String
    
    init(authManager: AuthManager, username: String) {
        self.username = username
        super.init(authManager: authManager)
    }
    
    func confirmSignUp() {
        authManager.confirmSignUp(username: username, confirmationCode: confirmationCode)
        handleActionResult()
    }
}
