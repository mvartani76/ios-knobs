//
//  Knob3ViewController.swift
//  ios-knobs
//
//  Created by Michael Vartanian on 7/1/19.
//  Copyright © 2019 Michael Vartanian. All rights reserved.
//

import UIKit

class Knob3ViewController: UIViewController {
    
    @IBOutlet var valueLabel: UILabel!
    @IBOutlet var knob3: Knob3!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        knob3.value = 0
        updateLabel()
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func handleKnobChange(_ sender: Any) {
        updateLabel()
    }
    
    func updateLabel() {
        valueLabel.text = String(format: "%.2f", knob3.value)
    }
}
