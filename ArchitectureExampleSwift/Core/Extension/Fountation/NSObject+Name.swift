//
//  NSObject+Name.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.03.2021.
//

import Foundation

/**
 `use this extension if you need to get class name`
 */

protocol ClassNameProtocol {
    static var className: String { get }
    var className: String { get }
}

extension ClassNameProtocol {
    public static var className: String {
        return String(describing: self)
    }
    
    public var className: String {
        return type(of: self).className
    }
}

extension NSObject: ClassNameProtocol {}
