//
//  Knob2ViewController.swift
//  ios-knobs
//
//  Created by Michael Vartanian on 7/1/19.
//  Copyright © 2019 Michael Vartanian. All rights reserved.
//

import UIKit

class Knob2ViewController: UIViewController {
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var knob2: Knob2!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        knob2.value = 0
        updateLabel()
    }
    
    @IBAction func handleKnobChange(_ sender: Any) {
        updateLabel()
    }
    
    func updateLabel() {
        valueLabel.text = String(format: "%.2f", knob2.value)
    }
}
