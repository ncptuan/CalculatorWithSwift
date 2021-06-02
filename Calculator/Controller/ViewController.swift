//
//  ViewController.swift
//  Calculator
//
//  Created by Mac on 24/05/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var portraitView: PortraitModeView!
    @IBOutlet weak var lanscapeView: PortraitModeView!
    var result = Calculating();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateResult(temp: result);
        resultLabel.font = UIFont.systemFont(ofSize: resultLabel.frame.height/2 * 1.5)
        choiceOriented();
    }
    
    func updateResult(temp: Calculating) {
        resultLabel.text = String(temp.getResult());
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        choiceOriented();
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent;
    }

    @IBAction func HoldRelease(_ sender: UIButton) {
        returnToOriginalColor(Target: sender)
    }
    
    @IBAction func HoldDown(_ sender: UIButton) {
        changeColorWhenPress(Target: sender)
        sendMessage(Target: sender)
    }
    
    func sendMessage(Target: UIButton) {
        switch Target.titleLabel?.text {
        case "0":
            result.addingNumberToLabel(num: "0");
            updateResult(temp: result);
            break;
        case "1":
            result.addingNumberToLabel(num: "1");
            updateResult(temp: result);
            break;
        case "2":
            result.addingNumberToLabel(num: "2");
            updateResult(temp: result);
            break;
        case "3":
            result.addingNumberToLabel(num: "3");
            updateResult(temp: result);
            break;
        case "4":
            result.addingNumberToLabel(num: "4");
            updateResult(temp: result);
            break;
        case "5":
            result.addingNumberToLabel(num: "5");
            updateResult(temp: result);
            break;
        case "6":
            result.addingNumberToLabel(num: "6");
            updateResult(temp: result);
            break;
        case "7":
            result.addingNumberToLabel(num: "7");
            updateResult(temp: result);
            break;
        case "8":
            result.addingNumberToLabel(num: "8");
            updateResult(temp: result);
            break;
        case "9":
            result.addingNumberToLabel(num: "9");
            updateResult(temp: result);
            break;
        case ",":
            result.addingNumberToLabel(num: ",");
            updateResult(temp: result);
            break;
        case "AS":
            result.clearAll();
            updateResult(temp: result);
            break;
        case "+/-":
            result.changeStage();
            updateResult(temp: result);
            break;
        case "%":
            result.getInforAboutOperator(tempOperator: "%");
            updateResult(temp: result);
            break;
        case "+":
            result.getInforAboutOperator(tempOperator: "+");
            updateResult(temp: result);
            break;
        case "-":
            result.getInforAboutOperator(tempOperator: "-");
            updateResult(temp: result);
            break;
        case "x":
            result.getInforAboutOperator(tempOperator: "x");
            updateResult(temp: result);
            break;
        case "/":
            result.getInforAboutOperator(tempOperator: "/");
            updateResult(temp: result);
            break;
        case "=":
            result.makeACalculating();
            updateResult(temp: result);
            break;
        default:
            print("extend function was clicked");
            break;
        }
    }
    
    func changeColorWhenPress(Target: UIButton){
        Target.backgroundColor = UIColor.black;
    }

    func returnToOriginalColor(Target: UIButton) {
        if (type(of: Target) == type(of: NumberButton())) {
            Target.backgroundColor = Theme.numberButtonBackgroundColor;
        }
        if (type(of: Target) == type(of: CalculationButton())) {
            Target.backgroundColor = Theme.calculationButtonBackgroundColor;
        }
        if (type(of: Target) == type(of: FunctionButton())) {
            Target.backgroundColor = Theme.functionButtonBackgroundColor
        }
    }
    
    func choiceOriented() {
        if UIDevice.current.orientation.isLandscape {
            portraitView.isHidden = true
            lanscapeView.isHidden = false
        } else {
            portraitView.isHidden = false
            lanscapeView.isHidden = true
        }
    }
}






