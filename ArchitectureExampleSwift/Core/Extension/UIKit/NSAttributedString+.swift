//
//  NSAttributedString+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.05.2021.
//

import Foundation
import UIKit

extension String {
    func withBoldText(text: String, font: UIFont? = nil, boldFont: UIFont) -> NSAttributedString {
        let _font = font ?? UIFont.systemFont(ofSize: 14, weight: .regular)
        let fullString = NSMutableAttributedString(string: self, attributes: [NSAttributedString.Key.font: _font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: boldFont, NSAttributedString.Key.foregroundColor: R.color.grayScaleDark()!]
        let range = (self as NSString).range(of: text)
        fullString.addAttributes(boldFontAttribute, range: range)
        return fullString
    }
    
    
    func otherFontAndColor(text: String, font: UIFont? = nil, boldFont: UIFont, color: UIColor) -> NSAttributedString {
        let _font = font ?? UIFont.systemFont(ofSize: 14, weight: .regular)
        let fullString = NSMutableAttributedString(string: self, attributes: [NSAttributedString.Key.font: _font])
        let boldFontAttribute: [NSAttributedString.Key: Any] = [NSAttributedString.Key.font: boldFont, NSAttributedString.Key.foregroundColor: color]
        let range = (self as NSString).range(of: text)
        fullString.addAttributes(boldFontAttribute, range: range)
        return fullString
    }
}
