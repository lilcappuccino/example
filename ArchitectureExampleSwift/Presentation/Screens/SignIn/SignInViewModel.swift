//
//  SignInViewModel.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import Combine

struct SignInModel {} // if we need to get data from another viewModel

final class SignInViewModel: AViewModel, AViewModelType {
    
    // MARK: Property
    private var authRepo: AuthRepository { repoProvider.makeAuthRepository() }
    
    @Published var state: SignInState = .default
    @Published var email: String?
    @Published var password: String?
    
    
    
    // MARK: - Repository
    func signIn() {
        /// validation here
        authRepo.signIn(with: email.orEmpty, password: password.orEmpty)
            .sink(receiveValue: { result in
                switch result {
                case .failure(let error): self.state = .failure(error)
                case .success(_): self.state = .navigate(AViewModel()) /// target screen ViewModel
                }
            }).store(in: &cancellableSet)
    }
}
