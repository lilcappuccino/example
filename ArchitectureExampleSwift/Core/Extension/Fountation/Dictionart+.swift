//
//  Dictionart+.swift
//  Lobab
//
//  Created by Vadim Marchenko on 31.03.2021.
//

import Foundation

extension Dictionary where Key == String {
    
    var urlQueryItems: [URLQueryItem]? {
        
        if !self.isEmpty {
            var query:[URLQueryItem] = []
            _  = self.keys.map { key in
                query.append(URLQueryItem(name: key, value: self[key] as? String))
            }
            return query
        }
        return nil
    }

}
