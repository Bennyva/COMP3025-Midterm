//
//  ViewController.swift
//  Benjamin Vanarragon
//  Friday, February 26th, 2016
//
//  Created by student on 2016-02-26.
//  Copyright © 2016 student. All rights reserved.
//
//  This ViewController.swift will control everything on the view. It has the main functions to add a list item, name a grocery list, and add and subtract values to the list.

import UIKit
//This is the main ViewController class, it contains the main methods to add a shopping list name, and list items, as well as increment the amount needed for each item
class ViewController: UIViewController {
    //connecting my UIlables and UITextFields so I can use them in code behind
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
    
    //This is an increment value I will use to store the labels text value in and cast the string to this int
    var incrementValue:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //here I call the clear form method to assure that when the view loads that the form will have all the defaults i've specified
        clearForm(self)
    }

    
    //this method will increment up each list item, it has a switch statement that can determine which list item is being sent by the tag value and adds 1
    @IBAction func incrementUp(sender: UIButton) {
        switch sender.tag {
        case 1:
            incrementValue = Int(listOneCount.text!)!
            incrementValue += 1
            listOneCount.text = String(incrementValue)
            
        case 2:
            incrementValue = Int(listTwoCount.text!)!
            incrementValue += 1
            listTwoCount.text = String(incrementValue)
            
        case 3:
            incrementValue = Int(listThreeCount.text!)!
            incrementValue += 1
            listThreeCount.text = String(incrementValue)
            
        case 4:
            incrementValue = Int(listFourCount.text!)!
            incrementValue += 1
            listFourCount.text = String(incrementValue)
            
        case 5:
            incrementValue = Int(listFiveCount.text!)!
            incrementValue += 1
            listFiveCount.text = String(incrementValue)
            
            
        default:
            print("default")
        }
    }
    
    //this is the opposite of the incrementUp method, it will use a similar switch statement to determine which list item it is being pressed for, it also contains an if statement that makes sure it cannot go below 0
    @IBAction func incrementDown(sender: AnyObject) {
        
        //the tag value of the sender item can be set in the inspector menu
        switch sender.tag {
        case 1:
            //Casting the string to the integer value
            incrementValue = Int(listOneCount.text!)!
            //the if statement that checks to make sure i don't go below 0
            if(incrementValue >= 1){
                //decrementing the value
                incrementValue -= 1
                //setting the value back to the label text
                listOneCount.text = String(incrementValue)
            }
            
        case 2:
            incrementValue = Int(listTwoCount.text!)!
            if(incrementValue >= 1){
            incrementValue -= 1
            listTwoCount.text = String(incrementValue)
            }
        case 3:
            incrementValue = Int(listThreeCount.text!)!
            if(incrementValue >= 1){
            incrementValue -= 1
            listThreeCount.text = String(incrementValue)
            }
        case 4:
            incrementValue = Int(listFourCount.text!)!
            if(incrementValue >= 1){
            incrementValue -= 1
            listFourCount.text = String(incrementValue)
            }
        case 5:
            incrementValue = Int(listFiveCount.text!)!
            if(incrementValue >= 1){
            incrementValue -= 1
            listFiveCount.text = String(incrementValue)
            }
            
        default:
            print("default")
        }

    }
    
    //This method will reset all the placeholder text and the text that the user entered to the default values and make the form as if the app just reloaded
    @IBAction func clearForm(sender: AnyObject) {
        shoppingList.placeholder = "Shopping List"
        listOneLabel.placeholder = "Enter List Item"
        listTwoLabel.placeholder = "Enter List Item"
        listThreeLabel.placeholder = "Enter List Item"
        listFourLabel.placeholder = "Enter List Item"
        listFiveLabel.placeholder = "Enter List Item"
        
        shoppingList.text = ""
        listOneLabel.text = ""
        listTwoLabel.text = ""
        listThreeLabel.text = ""
        listFourLabel.text = ""
        listFiveLabel.text = ""
        
        listOneCount.text = "0"
        listTwoCount.text = "0"
        listThreeCount.text = "0"
        listFourCount.text = "0"
        listFiveCount.text = "0"
    }
}

