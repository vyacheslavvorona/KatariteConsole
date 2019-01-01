//
//  KTUtilities.swift
//  KatariteConsole
//
//  Created by Vorona Vyacheslav on 1/1/19.
//  Copyright © 2019 Vorona Vyacheslav. All rights reserved.
//

import Foundation

public class KTMultiplier: ExpressibleByFloatLiteral {
    public typealias FloatLiteralType = Float


    private var _value: Float
    public var value: Float {
        get {
            return _value
        }
    }

    public required init(floatLiteral value: Float) {
        if value < 0 {
            self._value = 0
        } else if value > 1 {
            self._value = 1
        } else {
            self._value = value
        }
    }
}

extension KTMultiplier: Equatable {
    public static func == (lhs: KTMultiplier, rhs: KTMultiplier) -> Bool {
        return lhs.value == rhs.value
    }
}
