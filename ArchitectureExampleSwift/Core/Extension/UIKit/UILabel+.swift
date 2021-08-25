//
//  UILabel+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 29.04.2021.
//

import Foundation
import UIKit

    extension UILabel {
        var maxNumberOfLines: Int {
            let maxSize = CGSize(width: frame.size.width, height: CGFloat(MAXFLOAT))
            let text = (self.text ?? "") as NSString
            let textHeight = text.boundingRect(with: maxSize, options: .usesLineFragmentOrigin, attributes: [.font: self.font!], context: nil).height
            let lineHeight = font.lineHeight
            return Int(ceil(textHeight / lineHeight))
        }
    }
