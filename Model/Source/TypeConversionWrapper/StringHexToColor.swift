//
//  StringHexToColor.swift
//  PakWheels
//
//  Created by Muhammad Ali on 24/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper struct StringHexToColor: CodAbleInetilizer {
    static var defaultValue: String = ""
    var wrappedValue: String
    var projectedValue: UIColor {
        return UIColor(hex: wrappedValue, alpha: 1)
    }
}
