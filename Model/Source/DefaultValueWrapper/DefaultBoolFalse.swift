//
//  DefaultBoolFalse.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper struct DefaultBoolFalse: CodAbleInetilizer {
    static var defaultValue: Bool = false
    var wrappedValue: Bool
}
