//
//  ViewController.swift
//  FoodTracker
//
//  Created by 成田和弘 on 2018/04/02.
//  Copyright © 2018年 kazuhiro.narita. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties

    @IBOutlet weak var mealTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        //Do any additional setup after loading the view, typically from a nib.
        mealTextField.delegate = self
    }

    //MARK: UITextFieldDelegate

    func textFieldShouldReturn(_ textField : UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }

    func textFieldDidEndEditing(_ textField : UITextField) {
        mealNameLabel.text = textField.text
    }

    //MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default Text"
    }
}
