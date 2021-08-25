//
//  Delay.swift
//  Lobab
//
//  Created by Vadim Marchenko on 27.06.2021.
//

import Foundation

// MARK: - Delay
func delayWithSeconds(_ seconds: Double, completion: @escaping () -> ()) {
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
        completion()
    }
}
