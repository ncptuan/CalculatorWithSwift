//
//  ModRoundedButton.swift
//  Calculator
//
//  Created by Mac on 26/05/2021.
//

import Foundation
import UIKit


extension UIButton{
    open override func layoutSubviews() {
        titleLabel?.font = UIFont.systemFont(ofSize: 500)
    }
}
class RoundedButton: UIButton{
    override func layoutSubviews() {
        super.layoutSubviews();
        updateCornerRadius();
        updateFont()
    }

    func updateCornerRadius() {
        if frame.size.height < frame.size.width {
            layer.cornerRadius = (frame.size.height / 2) * 0.97
        }else{
            layer.cornerRadius = (frame.size.width / 2) * 0.97
        }
        titleLabel!.font = UIFont.preferredFont(forTextStyle: .body)
        titleLabel!.adjustsFontForContentSizeCategory = true
    }
    func updateFont(){ 
        guard let fnt = titleLabel?.font else {return}
        
        let h = ((bounds.height - 12.0) * (15.0/18.0)).rounded();
        let fs = fnt.pointSize
        if h != fs {
//            titleLabel?.font = UIFont.systemFont(ofSize: 500)
        }
    }
}

class NumberButton: RoundedButton {
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

class CalculationButton: RoundedButton {
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

class FunctionButton: RoundedButton {
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

// @IBInspectable
