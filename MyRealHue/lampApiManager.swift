//
//  lampApiManager.swift
//  MyRealHue
//
//  Created by Christiaan Paans on 22/10/2018.
//  Copyright © 2018 Christiaan Paans. All rights reserved.
//

import Foundation
import Alamofire

class LampApiManager {
    
    let url : String = "http://192.168.1.179:80/api/0h3Gr4yO6l1R1-WRt5YgqzBeux4JYA6ViOMYyKHC/lights"
    let headers : [String:String] = [:]
    let params : [String:String] = [:]
    var delegate: ApiDelegate?
    
    func getLamps() {
        Alamofire.request(url, parameters: params, headers: headers).responseJSON{
            response in
            if let json = response.result.value as? [String: [String: Any]] {
                for (key,value) in json {
                    let name = key
                    let state = value["state"] as! [String: Any]
                    let bri = state["bri"] as! Int
                    let hue = state["hue"] as! Int
                    let val = state["sat"] as! Int
                    //let _isOn = state["on"] as! Bool
                    
                    let lamp = Lamp(hue: hue, bri: bri, sat: val, name: name, isOn: true)
                    self.delegate?.receivedLamps(lamp: lamp)
                 }
            }
        }
    }
    
    func putLamp(lamp: Lamp){
        let parameters : Parameters = ["hue": lamp.hue, "on": lamp.isOn]
        let header: [String:String] = ["Content-Type": "application/json"]
        Alamofire.request(url + "/" + lamp.name + "/state", method: .put, parameters: parameters, encoding: JSONEncoding.default, headers: header).responseJSON{response in}
    }
    
}
