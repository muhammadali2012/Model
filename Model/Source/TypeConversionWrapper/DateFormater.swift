//
//  DateFormater.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper struct DateFormater: CodAbleInetilizer {
    static var defaultValue: String?
    var wrappedValue: String?
    var projectedValue: Date {
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
}
