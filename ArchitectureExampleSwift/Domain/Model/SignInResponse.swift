//
//  SignInResponse.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation


public struct SignInResponse {
    let token, userName: String
}


public extension SignInResponse {
    func mapToLocalModel() -> SignInResponseLocalModel {
        SignInResponseLocalModel(token: token, userName: userName)
    }
}
