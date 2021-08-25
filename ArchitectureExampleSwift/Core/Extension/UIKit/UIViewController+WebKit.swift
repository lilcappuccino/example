//
//  UIViewController+WebKit.swift
//  Lobab
//
//  Created by Vadim Marchenko on 20.06.2021.
//

import Foundation
import UIKit
import SafariServices

extension LViewController {
    
    func open(url: String) {
        if let url = URL(string: url) {
//            UIApplication.shared.open(url)
            let safariVC = SFSafariViewController(url: url)
            safariVC.modalPresentationStyle = .pageSheet
            present(safariVC, animated: true, completion: nil)
        }
    }
}
