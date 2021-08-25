//
//  Label+Icon.swift
//  Lobab
//
//  Created by Vadim Marchenko on 04.04.2021.
//

import Foundation
import UIKit

extension UILabel {
    func addIcon(imageOffsetY: CGFloat = -5.0, imageOffsetX: CGFloat = 8.0, width: CGFloat, height: CGFloat, icon: UIImage!, text: String) {
        // Create Attachment
        let imageAttachment = NSTextAttachment()
        imageAttachment.image = icon
        // Set bound to reposition

        imageAttachment.bounds = CGRect(x: imageOffsetX, y: imageOffsetY, width: width, height: height)
        // Create string with attachment
        let attachmentString = NSAttributedString(attachment: imageAttachment)
        // Initialize mutable string
        let completeText = NSMutableAttributedString(string: "")
        // Add image to mutable string
        completeText.append(attachmentString)
        // Add your text to mutable string
        let textAfterIcon = NSAttributedString(string: text)
        completeText.append(textAfterIcon)
        self.textAlignment = .left
        self.attributedText = completeText
    }
}
