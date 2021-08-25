//
//  RepositoriesProviderImpl.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation

final class RepositoriesProviderImpl: RepositoriesProvider {
    
    private init() {}
    static let `default` = RepositoriesProviderImpl()
    
    func makeAuthRepository() -> AuthRepository {
        return AuthRepoositoryImpl.default
    }
    
    
}
