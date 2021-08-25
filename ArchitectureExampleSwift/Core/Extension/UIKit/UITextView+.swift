//
//  UITextView+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 01.05.2021.
//

import Foundation
import UIKit

public extension UITextView {

    func numberOfCharactersThatFitTextView() -> Int {
        let fontRef = CTFontCreateWithName(font!.fontName as CFString, font!.pointSize, nil)
        let attributes = [kCTFontAttributeName : fontRef]
        let attributedString = NSAttributedString(string: text!, attributes: attributes as [NSAttributedString.Key : Any])
        let frameSetterRef = CTFramesetterCreateWithAttributedString(attributedString as CFAttributedString)

        var characterFitRange: CFRange = CFRange()

        CTFramesetterSuggestFrameSizeWithConstraints(frameSetterRef, CFRangeMake(0, 0), nil, CGSize(width: bounds.size.width, height: bounds.size.height), &characterFitRange)
        return Int(characterFitRange.length)

    }
}
