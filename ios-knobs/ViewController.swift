//
//  ViewController.swift
//  ios-knobs
//
//  Created by Michael Vartanian on 6/23/19.
//  Copyright © 2019 Michael Vartanian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var valueSlider: UISlider!
    @IBOutlet var knob: Knob!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        knob.lineWidth = 4
        knob.pointerLength = 12
    }


}

