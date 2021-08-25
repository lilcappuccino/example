//
//  SignInState.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation

enum SignInState {
  case `default`
  case navigate(AViewModel)
  case failure(AError)
}
