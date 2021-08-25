//
//  UIViewController+Share.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.05.2021.
//

import Foundation
import UIKit

extension UIViewController {
   public func showShareBook(urlString: String = "https://developer.apple.com") -> UIActivityViewController? {
        if let name = URL(string: urlString), !name.absoluteString.isEmpty {
            let objectsToShare = [name] as [Any]
            let activityVC = UIActivityViewController(activityItems: objectsToShare, applicationActivities: nil)
            // Anything you want to exclude
            activityVC.excludedActivityTypes = [
                UIActivity.ActivityType.postToWeibo,
                UIActivity.ActivityType.print,
                UIActivity.ActivityType.assignToContact,
                UIActivity.ActivityType.saveToCameraRoll,
                UIActivity.ActivityType.addToReadingList,
                UIActivity.ActivityType.postToFlickr,
                UIActivity.ActivityType.postToVimeo,
                UIActivity.ActivityType.postToFacebook,
                UIActivity.ActivityType.postToTwitter,
                UIActivity.ActivityType.copyToPasteboard
            ]
            return activityVC
        } else {
            return nil
        }
    }
}
