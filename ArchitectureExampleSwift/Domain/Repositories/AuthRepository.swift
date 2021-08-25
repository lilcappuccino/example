//
//  AuthRepository.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import Combine

protocol AuthRepository {
    
    func signIn(with email: String, password: String) -> AnyPublisher<Result<SignInResponse, AError>, Never>
    
//    func resetPassword(for email: String) -> AnyPublisher<AuthResetPasswordResult, AuthError>
//
//    func confirmResetPassword(email: String, newPassword: String, confirmationCode: String) -> AnyPublisher<(), AuthError>
//
//    func register(user: RegisterUserRequestApi) ->  AnyPublisher<Result<RegisterUserResponseApi, LError>, Never>
//
//    func signOut() -> AnyPublisher<(), AuthError>
//
//    func fetchSession() -> AnyPublisher<AuthSession, AuthError>
//
//    func setFirstStart() -> AnyPublisher<(), Never>
//
//    func getUserAttr() -> AnyPublisher  <[AuthUserAttribute], AuthError>
//
//    func deleteUser() -> AnyPublisher<(), LError>
//
//    func isFirstStart() -> Bool
//
//    func setIsFirstStart(bool: Bool)
//
//    func getCategories() -> AnyPublisher<Result<[Category], LError>, Never>
//
//    func putCategories(categories: [Int]) -> AnyPublisher<Result<[Category], LError>, Never>
}
