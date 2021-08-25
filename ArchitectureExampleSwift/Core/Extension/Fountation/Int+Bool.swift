//
//  Int+Bool.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.04.2021.
//

import Foundation

extension Bool {
    var toInt: Int {
        if self { return 1}
        else { return 0 }
    }
}

extension Int {
    var toBool: Bool {
        if self == 1 { return true }
        else { return false }
    }
}
