//
//  String+Date.swift
//  Lobab
//
//  Created by Vadim Marchenko on 25.03.2021.
//

import Foundation

extension String {
     
    var date: Date {
        let dateFormatter = DateFormatter()

        dateFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss.SSSZZZZZ"

        let updatedAtStr = self
        return dateFormatter.date(from: updatedAtStr)!
    }
}
