//
//  DateFormatter.swift
//  Lobab
//
//  Created by Vadim Marchenko on 10.05.2021.
//

import Foundation

extension Date {
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full    
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}

extension String {
    func timeAgoDisplay() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.locale = Locale(identifier: "en_US_POSIX") // set locale to reliable US_POSIX
        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'"
        return date.timeAgoDisplay()
    }
}
