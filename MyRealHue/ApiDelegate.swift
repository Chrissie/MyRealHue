//
//  ApiDelegate.swift
//  MyRealHue
//
//  Created by Christiaan Paans on 22/10/2018.
//  Copyright © 2018 Christiaan Paans. All rights reserved.
//

import Foundation

protocol ApiDelegate {
    func receivedLamps(lamp: Lamp)
}
