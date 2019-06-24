import UIKit

var minimumValue: Float = 0
var maximumValue: Float = 1

private (set) var value: Float = 0

func setValue(_ newValue: Float, animated: Bool = false) {
    value = min(maximumValue, max(minimumValue, newValue))
}

var isContinuous = true

class Knob: UIControl {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .blue
    }
}

private class KnobRenderer {
}
