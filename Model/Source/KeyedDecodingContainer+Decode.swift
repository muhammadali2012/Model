//
//  KeyedDecodingContainer+decode.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
extension KeyedDecodingContainer {
    func decode<P>(_: DefaultValueWrapper<P>.Type, forKey key: Key) throws -> DefaultValueWrapper<P> where P: CodAbleInetilizer {
        if let value = try decodeIfPresent(DefaultValueWrapper<P>.self, forKey: key) {
            return value
        } else {
            return DefaultValueWrapper(wrappedValue: P(wrappedValue: P.defaultValue))
        }
    }
}
