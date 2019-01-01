//
//  KTScene.swift
//  KatariteConsole
//
//  Created by Vorona Vyacheslav on 1/1/19.
//  Copyright © 2019 Vorona Vyacheslav. All rights reserved.
//

import Foundation

public class KTScene {

    public var narration: String

    public var lighting: KTLighting = KTLighting(.wellLit)
    public var dayTime: KTDayTime = .day
    public var size: KTSize?


    init(narration: String) {
        self.narration = narration
    }

    public func present() -> String {
        return narration
    }
}
