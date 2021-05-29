//
//  Styles.swift
//  Calculator
//
//  Created by Mac on 28/05/2021.
//

import Foundation
import UIKit

struct Theme {
    static var backgroundColor: UIColor?
    static var ResultLable: UIColor?
    static var numberButtonTextColor: UIColor?
    static var functionButtonTextColor: UIColor?
    static var calculationButtonTextColor: UIColor?
    static var numberButtonBackgroundColor: UIColor?
    static var functionButtonBackgroundColor: UIColor?
    static var calculationButtonBackgroundColor: UIColor?
    
    static public func defaultTheme(){
        self.backgroundColor = UIColor.black;
        self.ResultLable = UIColor.white;
        self.numberButtonTextColor = UIColor.white;
        self.functionButtonTextColor = UIColor.black;
        self.calculationButtonTextColor = UIColor.white;
        self.numberButtonBackgroundColor = UIColor.secondaryLabel;
        self.functionButtonBackgroundColor = UIColor.systemGray;
        self.calculationButtonBackgroundColor = UIColor.systemOrange;
        updateDisplay();
    }
    
    static public func whiteTheme(){
        self.backgroundColor = UIColor.white;
        self.ResultLable = UIColor.black;
        self.numberButtonTextColor = UIColor.black;
        self.functionButtonTextColor = UIColor.white;
        self.calculationButtonTextColor = UIColor.white;
        self.numberButtonBackgroundColor = UIColor.secondaryLabel;
        self.functionButtonBackgroundColor = UIColor.systemPink;
        self.calculationButtonBackgroundColor = UIColor.systemBlue;
        updateDisplay();
    }
    
    static public func whiteTheme2(){
        self.backgroundColor = UIColor.white;
        self.ResultLable = UIColor.black;
        self.numberButtonTextColor = UIColor.black;
        self.functionButtonTextColor = UIColor.white;
        self.calculationButtonTextColor = UIColor.white;
        self.numberButtonBackgroundColor = UIColor.secondaryLabel;
        self.functionButtonBackgroundColor = UIColor.systemYellow;
        self.calculationButtonBackgroundColor = UIColor.systemOrange;
        updateDisplay();
    }
    
    
    static public func updateDisplay(){
        let proxyNumberButton = NumberButton.appearance();
        proxyNumberButton.setTitleColor(Theme.numberButtonTextColor, for: .normal);
        proxyNumberButton.backgroundColor = Theme.numberButtonBackgroundColor;
        
        let proxyFunctionButton = FunctionButton.appearance();
        proxyFunctionButton.setTitleColor(Theme.functionButtonTextColor, for: .normal);
        proxyFunctionButton.backgroundColor = Theme.functionButtonBackgroundColor;
        
        let proxyCalculationButton = CalculationButton.appearance();
        proxyCalculationButton.setTitleColor(Theme.calculationButtonTextColor, for: .normal);
        proxyCalculationButton.backgroundColor = Theme.calculationButtonBackgroundColor;
        
        let proxyView = UIView.appearance()
        proxyView.backgroundColor = backgroundColor;
        
        let proxyResult = UILabel.appearance()
        proxyResult.textColor = Theme.ResultLable;
    }
}
