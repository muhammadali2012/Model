//
//  DefaultValueWrapper.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

// use this propoerty wrappers on left of a property wrapper which value can be missing or null in json
// used in KeyedDecodingContainer+Decode

@propertyWrapper struct DefaultValueWrapper<T: CodAbleInetilizer> {
    var wrappedValue: T
    var projectedValue: T {
        return wrappedValue
    }
}

extension DefaultValueWrapper: CodAbleInetilizer {
    static var defaultValue: T {
        get { return FullStringToUrl(wrappedValue: "") as! T }
        set {}
    }
}
