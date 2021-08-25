//
//  ViewController+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 22.03.2021.
//

import Foundation
import UIKit
import Toast_Swift

extension AViewController {
    
    func showAlert(title: String?, message: String?, completion: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let actionOK = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alertController.addAction(actionOK)
        self.present(alertController, animated: true, completion: completion)
    }
    
 
    
    func showSuccess(message: String) {
        DispatchQueue.main.async {
            var style = ToastStyle()
//            style.backgroundColor = R.color.success()!
            self.view.makeToast(message, duration: 0.5, position: .top, title: nil, image: nil, style: style, completion: nil)
            logSuccess(message)
        }
        
    }
}
