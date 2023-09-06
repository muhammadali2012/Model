//
//  DateFormater.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper public struct DateFormater: CodAbleInetilizer {
    static public var defaultValue: String?
    public var wrappedValue: String?
    public var projectedValue: Date {
        if let nonOptionalWrappedValue = wrappedValue {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "MMM dd, yyyy"

            if let date = dateFormatter.date(from: nonOptionalWrappedValue) {
                return date
            } else {
                return Date()
            }
        } else {
            return Date()
        }
    }
    public init(wrappedValue: String? = nil) {
        self.wrappedValue = wrappedValue
    }
}
