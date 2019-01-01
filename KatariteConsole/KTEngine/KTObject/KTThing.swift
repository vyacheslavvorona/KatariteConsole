//
//  KTThing.swift
//  KatariteConsole
//
//  Created by Vorona Vyacheslav on 1/1/19.
//  Copyright © 2019 Vorona Vyacheslav. All rights reserved.
//

import Foundation

public class KTThing: KTBaseObject {
    var price: Int?
    var isContainer: Bool = false
    var containerSize: KTSize?
    var includedObjects: [KTBaseObject]?

    init(description: String? = nil,
         size: KTSize = KTSize(),
         lighting: KTLighting = KTLighting(.wellLit),
         pickable: Bool = false,
         price: Int = 0,
         isContainer: Bool = false,
         containerSize: KTSize? = nil) {

        super.init(description: description, size: size, lighting: lighting, pickable: pickable)

        self.price = price
        self.isContainer = isContainer
        self.containerSize = containerSize
    }
}
