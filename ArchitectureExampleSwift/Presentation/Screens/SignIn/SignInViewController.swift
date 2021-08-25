//
//  SignInViewController.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import CombineCocoa

final class SignInViewController: AViewController, Viewable {
    
    typealias RootView = SignInView
    typealias ViewModel = SignInViewModel
    
    // MARK: - Lifecycle
    override func loadView() {
        view = SignInView()
    }
    
    override func bindViewModel() {
        
        _viewModel.$state
            .sink(receiveValue: { [weak self] in self?.handle(state: $0)})
            .receive(on: DispatchQueue.main)
            .store(in: &cancellableSet)
        
        _view.actionButton.tapPublisher
            .sink(receiveValue:  {
                
            }).store(in: &cancellableSet)
        
        _view.emailTextField.textPublisher
            .assign(to: \.email, on: _viewModel)
            .store(in: &cancellableSet)
        
        _view.passwordTextField.textPublisher
            .assign(to: \.password, on: _viewModel)
            .store(in: &cancellableSet)
        
    }
    
    // MARK: - Handle state
    private func handle(state: SignInState) {
        switch state {
        case .navigate(let vm):
            navigateTo(vm: vm)
        case .failure(let error):
            logError(error.localizedDescription)
        case .default:
            return
        }
    }
    
    private func navigateTo(vm: AViewModel) {
        logInfo("navigate to other screen")
    }
    
    private func actionButtonDidTap() {
        _viewModel.signIn()
    }
}
