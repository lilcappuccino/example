//
//  Viewable.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation


import Foundation

/// protocol for getting custom view and view model
typealias Viewable = ViewModelable & RootViewable

//protocol Viewable {
//    associatedtype RootView
//    associatedtype ViewModel
//}
//
//extension Viewable where Self: LViewController {
//
//    var _view: RootView {
//        view as! RootView
//    }
//
//    var _viewModel: ViewModel {
//        viewModel as! ViewModel
//    }
//}

/// protocol for getting custom viewModel
protocol ViewModelable where Self: AViewController {
    associatedtype ViewModel
}

extension ViewModelable {
    
    var _viewModel: ViewModel {
        viewModel as! ViewModel
    }
}

/// protocol for getting custom View
protocol RootViewable  where Self: AViewController {
    associatedtype RootView
}

extension RootViewable {
    var _view: RootView {
        view as! RootView
    }
}
