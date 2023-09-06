//
//  DefaultStringEmpty.swift
//  PakWheels
//
//  Created by Muhammad Ali on 23/05/2023.
//  Copyright © 2023 Confiz Solutions. All rights reserved.
//

import Foundation

@propertyWrapper struct DefaultStringEmpty: CodAbleInetilizer {
    static var defaultValue: String = ""
    var wrappedValue: String
}
