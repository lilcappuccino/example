//
//  UIColor+ Color.swift
//  Lobab
//
//  Created by Vadim Marchenko on 26.03.2021.
//

import Foundation
import UIKit
import SwiftUI

public extension UIColor {
    /// The SwiftUI color associated with the receiver.
    var swiftUI: Color { Color(self) }
}
