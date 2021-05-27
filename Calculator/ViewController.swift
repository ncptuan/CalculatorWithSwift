//
//  ViewController.swift
//  Calculator
//
//  Created by Mac on 24/05/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent;
    }
    
    
    
    func ChangeColorWhenPress(Target: UIButton){
        if (Target.backgroundColor?.cgColor == UIColor.systemGray.cgColor) {
            Target.backgroundColor = UIColor.lightGray;
        }
        if (Target.backgroundColor?.cgColor == UIColor.systemOrange.cgColor){
            Target.backgroundColor = UIColor.lightBrownMod;
        }
        if (Target.backgroundColor?.cgColor == UIColor.secondaryLabel.cgColor) {
            Target.backgroundColor = UIColor.lightSecondaryMod;
        }
    }
    
    func ReturnToOriginalColor(Target: UIButton) {
        if (Target.backgroundColor?.cgColor == UIColor.lightGray.cgColor) {
            Target.backgroundColor = UIColor.systemGray;
        }
        if (Target.backgroundColor?.cgColor == UIColor.lightBrownMod.cgColor) {
            Target.backgroundColor = UIColor.systemOrange;
        }
        if (Target.backgroundColor?.cgColor == UIColor.lightSecondaryMod.cgColor) {
            Target.backgroundColor = UIColor.secondaryLabel;
        }
    }

    @IBAction func HoldRelease(_ sender: UIButton) {
        ReturnToOriginalColor(Target: sender)
    }
    
    @IBAction func HoldDown(_ sender: UIButton) {
        ChangeColorWhenPress(Target: sender)
    }
    
}

extension UIColor {
    class var lightBrownMod: UIColor{
        return UIColor(red: 204.0/255.0, green: 153.0/255.0, blue: 102.0/255.0, alpha: 1.0);
    }
    class var lightSecondaryMod: UIColor{
        return UIColor(red: 102.0/255.0, green: 102.0/255.0, blue: 102.0/255.0, alpha: 1.0);
    }
    
}




