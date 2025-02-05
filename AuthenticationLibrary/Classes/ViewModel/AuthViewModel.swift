//
//  AuthViewModel.swift
//  Library
//
//  Created by Dionicio Cruz Velázquez on 2/5/25.
//

import SwiftUI
import Combine

@available(iOS 13.0, *)
public class AuthViewModel: ObservableObject {
    @Published var showError: Bool = false
    public var authManager: AuthManager
    
    private var cancellables = Set<AnyCancellable>()
    
    init(authManager: AuthManager) {
        self.authManager = authManager
        observeErrorMessage()
    }
    
    func clearErrorMessage() {
        authManager.clearErrorMessage()
        showError = false
    }
    
    private func observeErrorMessage() {
        authManager.$errorMessage
            .sink { [weak self] errorMessage in
                if errorMessage != nil && self?.showError == false {
                    self?.showError = true
                }
            }
            .store(in: &cancellables)
    }
    
    func handleActionResult() {
        showError = authManager.errorMessage != nil
    }
}
