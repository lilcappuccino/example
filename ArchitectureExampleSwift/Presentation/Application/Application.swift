//
//  Application.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import Combine
import UIKit

// in this class we have to check user session
final class Application: NSObject {
    
    static let shared = Application()
    private var cancellableSet: Set<AnyCancellable> = []
    
    private let navigator: Navigator
    private var window: UIWindow?
    
    override init() {
        self.navigator = Navigator.default
        super.init()
        
    }

    func buildViewModel(window: UIWindow?) {
        self.window = window
        
        guard  let _window = window else { return }
     
        navigator.show(segue: .signIn(viewModel: SignInViewModel()), sender: nil, transition: .root(in: _window))
    }
    
   
    
}
