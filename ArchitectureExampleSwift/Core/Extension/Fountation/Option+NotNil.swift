//
//  Option+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 18.03.2021.
//

import Foundation

public extension Optional {
    /// Returns `true` if called on non-nil value and `false` otherwise
    var notNil: Bool {
        self != nil
    }
    
    var `nil`: Bool {
        self == nil
    }
}

extension Optional where Wrapped == String {
    
    var nilOrEmpty: Bool {
        if self == nil {
            return true
        } else if self!.isEmpty{
            return true
        } else {
            return false
        }
    }
}
