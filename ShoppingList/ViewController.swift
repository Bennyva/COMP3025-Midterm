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
    
    var num1:Int = 0
    var num2:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        clearForm(self)
    }

    

    @IBAction func incrementUp(sender: UIButton) {
        switch sender.tag {
        case 1:
            num1 = Int(listOneCount.text!)!
            num1 += 1
            listOneCount.text = String(num1)
            
        case 2:
            num1 = Int(listTwoCount.text!)!
            num1 += 1
            listTwoCount.text = String(num1)
            
        case 3:
            num1 = Int(listThreeCount.text!)!
            num1 += 1
            listThreeCount.text = String(num1)
            
        case 4:
            num1 = Int(listFourCount.text!)!
            num1 += 1
            listFourCount.text = String(num1)
            
        case 5:
            num1 = Int(listFiveCount.text!)!
            num1 += 1
            listFiveCount.text = String(num1)
            
            
        default:
            print("default")
        }
    }

    @IBAction func incrementDown(sender: AnyObject) {
        
        
        switch sender.tag {
        case 1:
            num1 = Int(listOneCount.text!)!
            if(num1 >= 1){
                num1 -= 1
                listOneCount.text = String(num1)
            }
            
        case 2:
            num1 = Int(listTwoCount.text!)!
            if(num1 >= 1){
            num1 -= 1
            listTwoCount.text = String(num1)
            }
        case 3:
            num1 = Int(listThreeCount.text!)!
            if(num1 >= 1){
            num1 -= 1
            listThreeCount.text = String(num1)
            }
        case 4:
            num1 = Int(listFourCount.text!)!
            if(num1 >= 1){
            num1 -= 1
            listFourCount.text = String(num1)
            }
        case 5:
            num1 = Int(listFiveCount.text!)!
            if(num1 >= 1){
            num1 -= 1
            listFiveCount.text = String(num1)
            }
            
        default:
            print("default")
        }

    }
    @IBAction func clearForm(sender: AnyObject) {
        shoppingList.placeholder = "Shopping List"
        listOneLabel.placeholder = "Enter List Item"
        listTwoLabel.placeholder = "Enter List Item"
        listThreeLabel.placeholder = "Enter List Item"
        listFourLabel.placeholder = "Enter List Item"
        listFiveLabel.placeholder = "Enter List Item"
        
        listOneCount.text = "0"
        listTwoCount.text = "0"
        listThreeCount.text = "0"
        listFourCount.text = "0"
        listFiveCount.text = "0"
    }
}

