//
//  AViewController.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import UIKit
import Combine

class AViewController: UIViewController, Navigatable {
    
    var viewModel: AViewModel!
    var navigator: Navigator!
    
    
    var cancellableSet: Set<AnyCancellable> = []
    
    init(viewModel: AViewModel, navigator: Navigator) {
        self.viewModel = viewModel
        self.navigator = navigator
        super.init(nibName: nil, bundle: nil)
    }
  
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .darkContent
    }
        
    // MARK: Navbar
    func setNavigationBarHidden(isHide: Bool, animated: Bool = false) {
        navigationController?.setNavigationBarHidden(isHide, animated: true)
    }
    
    @available(*,
    unavailable,
    message: "Loading this view controller from a nib is unsupported.")
    override public init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    @available(*,
    unavailable,
    message: "Loading this view controller from a nib is resticted")
    public required init?(coder: NSCoder) {
        fatalError("Loading this view controller from a nib is resticted")
    }

    func bindViewModel() {}
}
    
  
