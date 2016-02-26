//
//  ViewController.swift
//  ShoppingList
//
//  Created by student on 2016-02-26.
//  Copyright © 2016 student. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var listOneCount: UILabel!
    @IBOutlet weak var listTwoCount: UILabel!
    @IBOutlet weak var listThreeCount: UILabel!
    @IBOutlet weak var listFourCount: UILabel!
    @IBOutlet weak var listFiveCount: UILabel!
    
    @IBOutlet weak var shoppingList: UITextField!
    @IBOutlet weak var listOneLabel: UITextField!
    @IBOutlet weak var listTwoLabel: UITextField!
    @IBOutlet weak var listThreeLabel: UITextField!
    @IBOutlet weak var listFourLabel: UITextField!
    @IBOutlet weak var listFiveLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    

    @IBAction func incrementUp(sender: AnyObject) {
        
    }

    @IBAction func incrementDown(sender: AnyObject) {
    }
    @IBAction func clearForm(sender: AnyObject) {
        shoppingList.text = "Shopping List"
        listOneLabel.text = "Enter List Item"
        listTwoLabel.text = "Enter List Item"
        listThreeLabel.text = "Enter List Item"
        listFourLabel.text = "Enter List Item"
        listFiveLabel.text = "Enter List Item"
        
        listOneCount.text = "0"
        listTwoCount.text = "0"
        listThreeCount.text = "0"
        listFourCount.text = "0"
        listFiveCount.text = "0"
    }
}

