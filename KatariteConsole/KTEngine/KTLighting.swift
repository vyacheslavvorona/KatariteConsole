//
//  KTLighting.swift
//  KatariteConsole
//
//  Created by Vorona Vyacheslav on 1/1/19.
//  Copyright © 2019 Vorona Vyacheslav. All rights reserved.
//

import Foundation

public enum KTLightingType: KTMultiplier {
    case custom = -1.0

    case pitchDark = 0.0
    case dark = 0.1
    case poorlyLit = 0.25
    case normal = 0.5
    case wellLit = 0.75
    case bright = 0.9
    case blinding = 1.0
}

public class KTLighting {

    var type: KTLightingType

    var _multiplier: KTMultiplier?
    var multiplier: KTMultiplier {
        get {
            if type == .custom, let mulVal = _multiplier {
                return mulVal
            } else {
                return type.rawValue
            }
        }
    }

    init(_ type: KTLightingType, customValue: Float? = nil) {
        self.type = type
        if let cv = customValue {
            self._multiplier = KTMultiplier(floatLiteral: cv)
        }
    }
}

