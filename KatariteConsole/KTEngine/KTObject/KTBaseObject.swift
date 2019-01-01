//
//  KTObject.swift
//  KatariteConsole
//
//  Created by Vorona Vyacheslav on 1/1/19.
//  Copyright © 2019 Vorona Vyacheslav. All rights reserved.
//

import Foundation

public class KTBaseObject {
    var objectDescription: String?
    var size: KTSize
    var lighting: KTLighting
    var pickable: Bool

    init(description: String? = nil,
         size: KTSize = KTSize(),
         lighting: KTLighting = KTLighting(.wellLit),
         pickable: Bool = false) {

        if let des = description {
            self.objectDescription = des
        }
        self.size = size
        self.lighting = lighting
        self.pickable = pickable
    }
}
