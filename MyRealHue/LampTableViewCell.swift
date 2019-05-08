//
//  LampTableViewCell.swift
//  MyRealHue
//
//  Created by Christiaan Paans on 22/10/2018.
//  Copyright © 2018 Christiaan Paans. All rights reserved.
//

import UIKit

class LampTableViewCell: UITableViewCell {

    var thisLamp : Lamp?
    var manager : LampApiManager?
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var onSwitch: UISwitch!
    
    @IBOutlet weak var hueSlider: UISlider!
    
    @IBAction func onOffChange(_ sender: UISwitch) {
        thisLamp?.isOn = onSwitch.isOn
        manager?.putLamp(lamp: thisLamp!)
    }
    
    @IBAction func valueChanged(_ sender: UISlider) {
        thisLamp?.hue = Int(hueSlider.value)
        manager?.putLamp(lamp: self.thisLamp!)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
