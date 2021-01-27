//
//  ViewController.swift
//  Calculator
//
//  Created by Angela Yu on 10/09/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    
    private var isFinishedTyping: Bool = true
    
    @IBAction func calcButtonPressed(_ sender: UIButton) {
        isFinishedTyping = true
        //What should happen when a non-number button is pressed
        guard let number = Double(displayLabel.text!) else {
            fatalError("Cannot convert text to double")
        }
        
    }

    
    @IBAction func numButtonPressed(_ sender: UIButton) {
        //What should happen when a number is entered into the keypad
        if let numValue = sender.currentTitle {
            if isFinishedTyping {
                displayLabel.text = numValue
                isFinishedTyping = false
            } else {
                displayLabel.text?.append(numValue)
            }
        }
    }

}

