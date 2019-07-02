//
//  Knob3.swift
//  ios-knobs
//
//  Created by Michael Vartanian on 7/1/19.
//  Copyright © 2019 Michael Vartanian. All rights reserved.
//

import UIKit.UIGestureRecognizerSubclass

class Knob3: UIControl {
    
    /// Layer for the base ring.
    public private(set) var outerLayer = CAShapeLayer()
    public private(set) var middleLayer1 = CAShapeLayer()
    public private(set) var middleLayer2 = CAShapeLayer()
    
    /// Knob gesture recognizer.
    public private(set) var gestureRecognizer: Knob3GestureRecognizer!
    
    // MARK: Init
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    private func commonInit() {
        // Setup knob gesture
        gestureRecognizer = Knob3GestureRecognizer(target: self, action: #selector(handleGesture(_:)))
        addGestureRecognizer(gestureRecognizer)
        // Setup layers
        outerLayer.fillColor = UIColor.init(red: 7/255, green: 41/255, blue: 97/255, alpha: 1.0).cgColor
        outerLayer.strokeColor = UIColor.blue.cgColor
        middleLayer1.fillColor = UIColor.init(red: 28/255, green: 85/255, blue: 176/255, alpha: 1.0).cgColor
        middleLayer2.fillColor = UIColor.init(red: 85/255, green: 139/255, blue: 224/255, alpha: 1.0).cgColor
        layer.addSublayer(outerLayer)
        layer.addSublayer(middleLayer1)
        layer.addSublayer(middleLayer2)
    }
    
    // MARK: Lifecycle
    public override func layoutSubviews() {
        super.layoutSubviews()
        drawKnob3()
    }
    public func drawKnob3() {
        outerLayer.bounds = bounds
        outerLayer.position = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        middleLayer1.bounds = bounds
        middleLayer1.position = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        middleLayer2.bounds = bounds
        middleLayer2.position = CGPoint(x: bounds.width / 2, y: bounds.height / 2)
        
        // Draw base ring.
        let center = CGPoint(x: outerLayer.bounds.width / 2, y: outerLayer.bounds.height / 2)
        let radius_outer = (min(outerLayer.bounds.width, outerLayer.bounds.height) / 2)
        let radius_middle1 = radius_outer - 10
        let radius_middle2 = radius_outer - 25
        let ring_outer = UIBezierPath(arcCenter: center,
                                radius: radius_outer,
                                startAngle: 0,
                                endAngle: CGFloat(2 * Double.pi),
                                clockwise: true)
        let ring_middle1 = UIBezierPath(arcCenter: center,
                                      radius: radius_middle1,
                                      startAngle: 0,
                                      endAngle: CGFloat(2 * Double.pi),
                                      clockwise: true)
        let ring_middle2 = UIBezierPath(arcCenter: center,
                                        radius: radius_middle2,
                                        startAngle: 0,
                                        endAngle: CGFloat(2 * Double.pi),
                                        clockwise: true)
        outerLayer.path = ring_outer.cgPath
        outerLayer.lineCap = .round
        middleLayer1.path = ring_middle1.cgPath
        middleLayer1.lineCap = .round
        middleLayer2.path = ring_middle2.cgPath
        middleLayer2.lineCap = .round
    }
    
    // MARK: Rotation Gesture Recogniser
    // note the use of dynamic, because calling
    // private swift selectors(@ gestureRec target:action:!) gives an exception
    @objc dynamic func handleGesture(_ gesture: Knob3GestureRecognizer) {
    }
}

/// Custom gesture recognizer for the knob.
public class Knob3GestureRecognizer: UIPanGestureRecognizer {
}
