//
//  Lamp.swift
//  MyRealHue
//
//  Created by Christiaan Paans on 22/10/2018.
//  Copyright © 2018 Christiaan Paans. All rights reserved.
//

import Foundation

class Lamp {
    var hue: Int
    var bri: Int
    var sat: Int
    var name: String
    var isOn: Bool
    
    required init(hue: Int, bri: Int, sat: Int, name: String, isOn: Bool){
        self.hue = hue
        self.bri = bri
        self.sat = sat
        self.name = name
        self.isOn = isOn
    }
}
