//
//  SideMenuController.swift
//  Calculator
//
//  Created by Mac on 28/05/2021.
//

import UIKit

class SideMenuController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func DefaultTheme(_ sender: Any) {
        Theme.defaultTheme();
        self.loadView();
    }
    
    @IBAction func LightTheme(_ sender: Any) {
        Theme.whiteTheme();
        self.loadView();
    }
    @IBAction func LightTheme2(_ sender: Any) {
        Theme.whiteTheme2();
        self.loadView();
    }
    
    @IBAction func ReturnToMainView(_ sender: Any) {
//        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
