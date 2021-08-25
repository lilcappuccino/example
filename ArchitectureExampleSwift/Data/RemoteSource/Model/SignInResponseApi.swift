//
//  SignInResponseApi.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation

public struct SignInResponseApi: Codable {
    let token, userName: String
}

public extension SignInResponseApi  {
    func mapToDomain() -> SignInResponse {
        SignInResponse(token: token, userName: userName)
    }
}
