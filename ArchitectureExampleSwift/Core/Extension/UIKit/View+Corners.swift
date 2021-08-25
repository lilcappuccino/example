//
//  View+Corners.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.03.2021.
//

import Foundation
import UIKit

public extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
