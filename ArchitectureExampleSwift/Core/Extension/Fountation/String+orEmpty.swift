//
//  String+orEmpty.swift
//  Lobab
//
//  Created by Vadim Marchenko on 24.03.2021.
//

import Foundation

public extension Optional where Wrapped == String {
    
    var orEmpty: String {
        return self ?? ""
    }
}
