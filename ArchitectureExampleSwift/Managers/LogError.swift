//
//  LogError.swift
//  ArchitectureExampleSwift
//
//  Created by Vadim Marchenko on 25.08.2021.
//
import Foundation
import CocoaLumberjack


///  PRIORITY:  ERROR, WARN, INFO, DEBUG, VERBOSE.

public func logDebug(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogDebug(message())
    #endif
}

public func logError(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogError("â " + message())
    #endif
}

public func logInfo(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogInfo("âšī¸ " + message())
    #endif
}


public func logProgress(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogInfo("đ " + message())
    #endif
}

public func logSuccess(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogInfo("â " + message())
    #endif
}


public func logVerbose(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogVerbose("đ­ " + message())
    #endif
}

public func logWarn(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogWarn("â ī¸ " + message())
    #endif
}

public func logNetwork(_ message: @autoclosure () -> String) {
    #if DEBUG
    DDLogWarn("đ " + message())
    #endif
}


public func logResourcesCount() {
    #if DEBUG
//    logDebug("RxSwift resources count: \(RxSwift.Resources.total)")
    #endif
}
