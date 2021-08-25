//
//  Publisher+Weak.swift
//  Lobab
//
//  Created by Vadim Marchenko on 24.03.2021.
//

import Foundation
import Combine

extension Publisher where Self.Failure == Never {
    public func assign<Root>(to keyPath: ReferenceWritableKeyPath<Root, Self.Output>, onWeak object: Root) -> AnyCancellable where Root: AnyObject {
        sink { [weak object] (value) in
            guard let object = object else { return }
            _ = Just(value).assign(to: keyPath, on: object)
        }
    }
}
