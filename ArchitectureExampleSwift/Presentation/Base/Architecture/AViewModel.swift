//
//  AViewModel.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import Combine

protocol AViewModelType {
    
}

class AViewModel: NSObject, ObservableObject {
    
    var cancellableSet: Set<AnyCancellable> = []
    let repoProvider = RepositoriesProviderImpl.default
        
    override init() {
        super.init()
    }
    
}
