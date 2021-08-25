//
//  SKProduct+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 10.06.2021.
//

import Foundation
import StoreKit


public extension SKProduct {
    enum Subscription: String {
        case yearTest = "lobab.subrciption_1_year_test"
        case monthTest = "lobab.subrciption_1_month_test"
    }
    
    
    var localizedPrice: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = priceLocale
        return formatter.string(from: price)!
    }
    
    var title: String? {
        switch productIdentifier {
        case Subscription.yearTest.rawValue:
            return "Year Subscription"
        case Subscription.monthTest.rawValue:
            return "Month Subscription"
        default:
            return nil
        }
    }
    /// price / 12
    var localizedPricePerMonth: String {
        let pricePerMonth = self.price.doubleValue / 12.0
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = self.priceLocale
        return formatter.string(from: NSNumber(floatLiteral: pricePerMonth)) ?? ""
    }
}
