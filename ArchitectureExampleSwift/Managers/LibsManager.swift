//
//  LibsManager.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//

import Foundation
import CocoaLumberjack
import IQKeyboardManager


/// The manager class for configuring all libraries used in app.
final class LibsManager {
    
    /// The default singleton instance.
    static let shared = LibsManager()
    //    var reachability: Reachability?
    
    private init() {}
    
    func setupLibs() {
        setupCocoaLumberjack()
        setupKeyboardManager()
    }
    
    //  MARK: - CocoaLumberjack
    private func setupCocoaLumberjack() {
        DDLog.add(DDOSLogger.sharedInstance)
        let fileLogger: DDFileLogger = DDFileLogger() // File Logger
        fileLogger.rollingFrequency = TimeInterval(60*60*24)  // 24 hours
        fileLogger.logFileManager.maximumNumberOfLogFiles = 7
        DDLog.add(fileLogger)
    }
    
    // MARK: - IQKeyboardManager
    private func setupKeyboardManager() {
        IQKeyboardManager.shared().isEnabled = true
        //        IQKeyboardManager.shared().disabledTouchResignedClasses.add(ShelfDetailViewController.self)
    }
    
}

