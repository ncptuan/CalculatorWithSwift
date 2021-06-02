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
    }

    func updateCornerRadius() {
        if frame.size.height < frame.size.width {
            layer.cornerRadius = (frame.size.height / 2) * 0.97
        }else{
            layer.cornerRadius = (frame.size.width / 2) * 0.97
        }
    }
}
