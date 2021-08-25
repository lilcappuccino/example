//
//  AuthRepositoryImpl.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import Combine

final class AuthRepoositoryImpl: AuthRepository {
    
    private let localSource = AuthLocalDataSource()
    private let remoteSource = AuthRemoteDataStore()
    
    private init() { }
    static let `default` = AuthRepoositoryImpl()
    
    func signIn(with email: String, password: String) -> AnyPublisher<Result<SignInResponse, AError>, Never> {
      remoteSource.signIn(username: email, password: password)
            .map({ (result: Result<SignInResponseApi, AError>) -> Result<SignInResponse, AError> in
                switch result {
                case .success(let response):
                    let domainModel = response.mapToDomain()
                    localSource.save(model: domainModel.mapToLocalModel())
                    return .success(domainModel)
                case .failure(let error): return .failure(error)
                }
            })
            .eraseToAnyPublisher()
    }
    
    
}
