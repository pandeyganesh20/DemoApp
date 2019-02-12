//
//  ViewController.swift
//  Ganesh
//
//  Created by Ganesh Pandey on 1/27/19.
//  Copyright © 2019 Ganesh Pandey. All rights reserved.
//

import UIKit

class ViewController:
UIViewController {
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var TipControl: UISegmentedControl!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func onTap(_ sender: Any) {
        print("Hi!");
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        //Get bill amount
        let bill = Double(billField.text!) ?? 0
        
        //calculate tip and total
        let tipPercentage=[0.1,0.2,0.3]
        
        let tip =  bill * tipPercentage[TipControl.selectedSegmentIndex];
        let total = bill+tip;
        
        //update tip and total
        tipLabel.text = String(format: "$%.2f ", tip)
        totalLabel.text = String(format: "$%.2f ", total)
    }
}

