//
//  KeyedDecodingContainer+decode.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
 extension KeyedDecodingContainer {
    public func decode<P>(_: DefaultValueWrapper<P>.Type, forKey key: Key) throws -> DefaultValueWrapper<P> where P: CodAbleInetilizer {
        if let value = try decodeIfPresent(DefaultValueWrapper<P>.self, forKey: key) {
            return value
        } else {
            return DefaultValueWrapper(wrappedValue: P(wrappedValue: P.defaultValue))
        }
    }
     
     public func decode<P>(_: AnyValueWrapper<P>.Type, forKey key: Key) throws -> AnyValueWrapper<P> where P: CodAbleInetilizer {
         if let value = try decodeIfPresent(AnyValueWrapper<P>.self, forKey: key) {
             return value
         }
         else if let value = try decodeIfPresent(P.self, forKey: key) {
             return AnyValueWrapper(wrappedValue: value)
         }
         // check for all types poosible here if any type is filled convert it to inetiate P and used it in AnyValueWrapper and return it 
         else {
             return AnyValueWrapper(wrappedValue: P(wrappedValue: P.defaultValue))
         }
     }
     
}
