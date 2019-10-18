//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Melville, Aidan on 2019-10-10.
//  Copyright © 2019 Melville, Aidan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var totalBill: UITextField!
    //Tip calculation
    
    @IBOutlet weak var tipAmount: UITextField!

    @IBOutlet weak var people: UITextField!

    @IBOutlet weak var totalTip: UILabel!
    
    @IBOutlet weak var lableTipPerPerson: UILabel!
    
    
    //    let tipDivide:Double = Double(tipAmount/100)
    
//    let tip = totalBill/tipDivide

    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    
    @IBAction func calculate(_ sender: Any) {
       // Get values
        let cost = totalBill.text!
        let bill = Double(cost)!
        
        
        let tipAmountAsString = tipAmount.text!
        let tipAmountAsPercentage = Double(tipAmountAsString)!
        
        
        let totalPeople = people.text!
        let amountOfPeople = Double(totalPeople)!
        
        let tipAsDouble = tipAmountAsPercentage/100
        let totalTipInDollars = bill*tipAsDouble
        
        //Tip per person
        let tipPerPerson = totalTipInDollars/amountOfPeople
        
        
     totalTip.text = String(totalTipInDollars)
        
    lableTipPerPerson.text = String(tipPerPerson)
        
    }
    //How to get number back to labels ask in class I don't see a video on it and I forgot how to do it.
   
  
}

   







