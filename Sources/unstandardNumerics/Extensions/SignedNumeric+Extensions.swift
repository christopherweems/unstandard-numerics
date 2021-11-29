//
//  SignedNumeric+Extensions.swift
//  
//
//  Created by Christopher Weems on 11/29/21.
//

import Numerics

extension SignedNumeric where Self : Comparable {
    public func isWithin(tolerance: Self, of value: Self) -> Bool {
        let difference = self < value ? value - self : self - value
        return difference <= tolerance
    }
    
}
