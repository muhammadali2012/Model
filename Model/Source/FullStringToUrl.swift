//
//  FullStringToUrl.swift
//  PakWheels
//
//  Created by Muhammad Ali on 16/02/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation
@propertyWrapper struct FullStringToUrl: CodAbleInetilizer {
    static var defaultValue: String? = ""
    var wrappedValue: String?
    var projectedValue: URL? {
        if let nonOptionalWrappeddValue = wrappedValue, nonOptionalWrappeddValue != FullStringToUrl.defaultValue {
            return URL(string: nonOptionalWrappeddValue)
        } else {
            return nil
        }
    }

    init(wrappedValue: String?) {
        self.wrappedValue = wrappedValue
    }
}
