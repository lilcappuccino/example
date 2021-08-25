//
//  String+FirstLetter.swift
//  Lobab
//
//  Created by Vadim Marchenko on 29.06.2021.
//

import Foundation

extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
