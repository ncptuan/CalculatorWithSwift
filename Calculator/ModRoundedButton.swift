//
//  ModRoundedButton.swift
//  Calculator
//
//  Created by Mac on 26/05/2021.
//

import Foundation
import UIKit

class RoundedButton: UIButton{
    override func layoutSubviews() {
        super.layoutSubviews();
        updateCornerRadius();
//        updateFont()
    }

    func updateCornerRadius() {
        if frame.size.height < frame.size.width {
            layer.cornerRadius = (frame.size.height / 2) * 0.97
        }else{
            layer.cornerRadius = (frame.size.width / 2) * 0.97
        }
    }
    func updateFont(){ 
        guard let fnt = titleLabel?.font else {return}
        
        let h = ((bounds.height - 12.0) * (15.0/18.0)).rounded();
        let fs = fnt.pointSize
        if h != fs {
            titleLabel?.font = UIFont(descriptor: fnt.fontDescriptor, size: h)
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
