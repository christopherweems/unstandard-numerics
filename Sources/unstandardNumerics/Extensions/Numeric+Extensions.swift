//
//  Numeric+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/29/21.
//

import Numerics

extension Numeric {
    public static func *(lhs: Self, rhs: Self?) -> Self? {
        guard let rhs = rhs else { return nil }
        return lhs * rhs
    }
    
    public static func *(lhs: Self?, rhs: Self) -> Self? {
        guard let lhs = lhs else { return nil }
        return lhs * rhs
    }
    
}
